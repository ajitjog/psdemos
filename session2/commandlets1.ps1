

Get-ChildItem "D:\*.xlsx"

New-Item "C:\psdemos\A" -ItemType directory

Set-Content "C:\PSDemos\a\names.txt" -Value "101,Ajit,dombivl"

add-content "C:\PSDemos\a\names.txt" -Value "102,Karthik,dombivli"


$lines=get-content "C:\PSDemos\a\names.txt"
Write-Host $lines

$lines=[System.Io.File]::ReadAllLines("C:\PSDemos\a\names.txt")
Write-Host $lines

get-service | Select-Object -First 5

get-service | Where-Object {$_.Status -eq "Running"}

get-service | Where-Object {$_.Status -eq "Stopped"} | select-object -First 2

$services=get-service  | Where-Object {$_.Name -like "*MSSQLSERVER*" }
$services

foreach($svc in $services){

    $svc.Stop()

}


get-process | get-member

get-process | Sort-Object -Property CPU | Select-Object -Last 10

get-process | Sort-Object -Property WS | Select-Object -Last 10


get-process | select-object -property processname,threads,CPU -first 5


Invoke-Item "C:\windows\system32\notepad.exe"


add-content "myscript.txt" -Value "write-host 'hello it works from file';write-host 'hello it works again from file'"

$pstext= get-content "myscript.txt"
Invoke-Expression $pstext


#install-windowsfeature

# Install-WindowsFeature -Name Web-Server

#Install-Module -name servermanager

Invoke-WebRequest -Uri "https://www.google.com" -OutFile "googlehome.txt"


Invoke-WebRequest -Uri "https://github.com/ajitjog/NodeApp/archive/refs/heads/master.zip"  -OutFile nodeapp.zip























