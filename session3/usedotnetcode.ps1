#set-location "C:\PSDemos\session3"
#

$lst1 = New-Object System.Collections.ArrayList

$lst1.GetType()

$lst1.Add(100)
$lst1.Add("Hello")

foreach($ele in $lst1)
{
    $ele
}


$lst2 = New-object -TypeName "System.Collections.Generic.Dictionary[int,string]"

$lst2.GetType()

$lst2.Add(1,"Mumbai")
$lst2.Add(2,"Pune")


foreach($k in $lst2.Keys){

"Value = $($lst2[$k])"


}

$lst2[1]




