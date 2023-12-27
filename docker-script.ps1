# setting execution policy for the system
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass 

# list of programs installed
$listOfPrograms=Get-Item $env:ProgramFiles | ForEach-Object -Process {$_.EnumerateDirectories()}

Write-Host -Object $listOfPrograms -ForegroundColor DarkGreen

# test for docker installation 
$dockerFolder=Test-Path -Path $env:ProgramFiles/docker
  
$searchValue=Read-Host -Prompt 'search directory'

# docker installed location
$dir='C:\Program Files\docker\docker'
# app-name
$appName='docker desktop.exe'

if ($searchValue -ieq 'docker') {
  $programList=Get-Item $env:ProgramFiles | ForEach-Object -Process {$_.GetDirectories().Name -eq $searchValue}
}else {
  Write-Host -Object 'Enter the word Docker' -ForegroundColor Cyan
}

if ($dockerFolder) {

  if ($programList.ToString().ToLower().Contains($searchValue)){

    Write-host -Object 'Docker Installed' -ForegroundColor Cyan
    # starting docker engine
     Start-Process -WorkingDirectory $dir  -FilePath $appName
     Write-Host -Object "Docker Started" -ForegroundColor Green -Verbose
   
   while( 1 -eq 1 ){
   $input_command=Read-Host -Prompt "input-command"
   Invoke-Expression -Command $input_command | Write-Host -ForegroundColor Yellow | Format-Table -Wrap
    }
  } 
}elseif (!$dockerFolder) {
  Write-Host -Object "You may have installed docker in another directory which is not C:\Program Files" -ForegroundColor DarkYellow
}
else{
  Write-Host -Object 'Docker might not be Installed!' -ForegroundColor Cyan
}

