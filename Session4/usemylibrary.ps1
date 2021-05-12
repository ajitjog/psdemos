#set-location "C:\PSDemos\Session4"

clear-host

[System.Reflection.Assembly]::LoadFile("C:\PSDemos\Session4\MyLibrary.dll")

$citiacc = New-Object MyLibrary.MyClasses.CitiAccount

$citiacc.Deposit(5000)
$citiacc.Deposit(15000)


$bal = $citiacc.GetBalance()

Write-Host "Balance : $bal" 

$citiacc.Withdraw(6000)
$bal = $citiacc.GetBalance()

Write-Host "Balance after withdraw: $bal" 


