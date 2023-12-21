
### Commands to run the services ###
------------------------------------
- To build the services
> - [x] Run `docker compose --project-directory "./compose/" up -d` on you *CLI* to start the the *CI/CD* services
- To destroy the services
> - [x] Run `docker compose --project-directory "./compose/" down -v` on you *CLI* to destroy the the *CI/CD* services
- To stop the services
> - [x] Run `docker-compose -p cicd_project stop` to stop the project.
- To start the services
> - [x] Run `docker-compose -p cicd_project start` to start the project.

### Commands to login into the containers (jenkins-server,jenkins-agent-1,jenkins-agent-2,mysql-server) ###
-----------------------------------------------------------------------------------------------------------
- To login to `jenkins-server/controller` 
> - [x] Run `docker exec -it jenkins-server /bin/bash` on your command line (CLI).
- To login to `jenkins-agent-1` 
> - [x] Run `docker exec -it jenkins-agent-1 /bin/bash` on your command line (CLI).
- To login to `jenkins-agent-2` 
> - [x] Run `docker exec -it jenkins-agent-2 /bin/bash` on your command line (CLI).

### Docker commands for interactive mysql client ###
----------------------------------------------------
- To use the interactive mysql session,
> - [x] Run command `docker run -it --rm --network <network-name> ubuntu/mysql:8.0-22.04_beta mysql -h<container-name> -uroot -p`
> - [x] The password will be asked and you can enter `My:S3cr3t/`