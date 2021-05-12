Set-Location "c:\psdemos\session1"

$n1= 100
$n2=200

$n3 = $n2 + $n1

$n3

get-executionpolicy

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


$n1.GetType()
$n1="hello"
$n1.GetType()


[System.Int32]$num = 101


$num = "abc"




[System.String[]]$arr2= @("mumbai","pune","nashik")

$arr2.GetType()

for($i=0;$i -lt $arr2.Length;$i++)
{
    Write-Host "value is $($arr2[$i])"
}

foreach($c in $arr2)
{
    Write-Host "value is $c"
}

$arr1 = 10,20,30,13,12,17,21,23,25,34
foreach($n in $arr1)
{
    if($n % 2 -eq 0)
    {
       Write-Host "$n is  even"
    }
    else
    {
        write-host "$n is odd"
    }
}


[System.String[]]$arr2= @("mumbai","pune","nashik","nagpur","delhi","chennai")


foreach($c in $arr2)
{
    switch -CaseSensitive -Wildcard ($c)
    {
        "([a-z]{4})u[a-z]*" { "$c is selected";break; }

        default { "$c is on hold";break; }
    }
}


Clear-Host
$capitals = @{
        "mumbai"= "mah"
        "bangalore"="karnatka"
        "chennai" = "TN"
}

foreach($k in $capitals.Keys)
{
    Write-Host "Capital of $($capitals[$k]) is $k"

}


$arr2 += "lucknow"
$arr2