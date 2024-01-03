pipeline{

    agent{
        label 'AWS'
    }
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '2')
        timeout(10)
        disableConcurrentBuilds()
        retry  (conditions: [agent()], count: 3)
    }
    tools {
       git 'Default'
    }
    triggers {
       cron 'H/20 12 * * 1-5'
       githubPullRequests cancelQueued: true, events: [commitChanged()], spec: 'H/20 12 * * 1-5', triggerMode: 'HEAVY_HOOKS'
    }
    
    stages {
     stage('Build') { 
       steps {
         /* Checkout Stage */
          if(isUnix()){
          userRemoteConfigs: [[credentialsId: 'Angular_Repo', url: 'https://www.github.com/RemTech/Angular']]
          checkout scmGit(branches: [[name: '/master']],extensions: [])

         script{
            sh '''
            echo Build Number is ${env.BUILD_NUMBER} & Build URL is ${env.BUILD_URL} 
            ng build 
            '''
            }
         }
         else{
            // This is an optional step to run on windows OS
          userRemoteConfigs: [[credentialsId: 'Angular_Repo', url: 'https://www.github.com/RemTech/Angular']]
          checkout scmGit(branches: [[name: '/master']],extensions: [])

         script{
            pwsh '''
            echo Build Number is $env.BUILD_NUMBER & Build URL is $env.BUILD_URL 
            npm run build
           '''
         } 
      }   /* status of build */
         catchError(message: 'The build process has failed', stageResult: 'FAILURE') {
            script{
                sh '''echo ${currentBuild.result} & ${currentBuild.duration}
                      npm run build
                '''
             } 
             slackSend channel: '#frontend', color: '#8A61B1', message: `Please Check ${env.BUILD_URL} as it requires code review`
             //step([$class: 'Mailer', recipients: 'admin@somewhere']) optional to send email.
       }
  }
}
  stage('Test') {
    steps {
      script{
        sh '''
            echo testing ${env.JOB_NAME}
            ng test || npm run test 
            ng test --no-watch --no-progress /*CI mode*/
        '''
      }
    }
  }

}
  /* Report generation*/
post {
  always {
    publishHTML(
    [allowMissing: false, alwaysLinkToLastBuild: false, 
    keepAll: true, reportDir: 'coverage/*.html', reportFiles: 'index.html', 
    reportName: `Status Report`, reportTitles: '', useWrapperFileDirectly: true]
    )
    slackSend channel: '#frontend', color: '#8A61B1', message: `Test Status: Build URL ${env.BUILD_URL} & Result ${currentBuild.result}`
  }
}

}