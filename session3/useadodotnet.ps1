
$sqlconn = New-Object System.Data.SqlClient.SqlConnection  -ArgumentList "server=psserver.database.windows.net;database=psdb;user id=ajitjog;password=sqlserver@123"

$sqlconn.Open()

$sqlcmd = New-Object System.Data.SqlClient.SqlCommand -ArgumentList "select * from emp",$sqlconn


$rdr = $sqlcmd.ExecuteReader()


while($rdr.Read())
{
    Write-Host "Emp Name = $($rdr['ename'])      Sal = $($rdr['esal'])"
        
}

$rdr.Close()






