$reg = "HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones"

$tz = @()
Get-ChildItem -Path $reg | % {

    $name = ($PSItem | Get-ItemProperty).PSChildName 
    $display = ($PSItem | Get-ItemProperty).Display 
    
    $tzo = $display.Substring(4,6)
    $city = $display.Substring(12)


    $tz += [PSCustomObject]@{
        Name="$name"
        TZO="$tzo"
        City="$city"
    }

}

$tz | Out-GridView


