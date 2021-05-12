$modvar ="hello from module"

function first()
{
    $modvar="i am first mod"
    $fvar="hello from first fn"
    Write-Host  "$script:modvar"
    second

}


function second()
{
    Write-Host $modvar
    Write-Host $fvar
}



Clear-Host
first

Clear-Host
function greet($usr,$msg="GM")
{

    if ($usr -ne $null)
        {Write-Host "Hi $usr, $msg"}
    else
        {Write-Host "user name missing"}
    
}

greet -usr "Ajit" -msg "GA"

greet "Ajit" "GE"

greet


function CanIVote(){
    param(
        [Parameter(Mandatory=$true, HelpMessage="Enter name")]
        $usrname,
        [Parameter(Mandatory=$true, HelpMessage="Enter age")]
        [System.Int32]$age
        )

    if ($age -ge 18)
    { "you can vote"}
    else
    {"wait till 18"}
  }



CanIVote -usrname "Ajit" 


for ($i = 1; $i -le 100; $i++ )
{
    Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 250
}


Get-Alias

sleep -s 3