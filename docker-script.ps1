# setting execution policy for the current user
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass 

$listOfPrograms=Get-Item $env:ProgramFiles | ForEach-Object -Process {$_.EnumerateDirectories()}

Write-Host -Object $listOfPrograms -ForegroundColor DarkGreen

$searchValue=Read-Host -Prompt 'search directory'

# docker installed location
$dir='C:\Program Files\Docker\Docker'
# app-name
$appName='docker desktop.exe'

$programList=Get-Item $env:ProgramFiles | ForEach-Object -Process {$_.GetDirectories().Name -eq $searchValue}

if ($programList.ToString().ToLower().Contains($searchValue)){

 # starting docker engine
  Write-Host -Object  'Docker is Installed' -ForegroundColor Yellow
  Start-Process -WorkingDirectory $dir  -FilePath $appName
  
  Write-Host -Object "Docker Started" -ForegroundColor Green -Verbose

while( 1 -eq 1 ){
$input_command=Read-Host -Prompt "input-command"
Invoke-Expression -Command $input_command | Write-Host -ForegroundColor Yellow | Format-Table -Wrap
 }

}

else{
  Write-Host -Object 'Docker might not be Installed!' -ForegroundColor Cyan
}