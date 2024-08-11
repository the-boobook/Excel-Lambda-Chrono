

$path = "$PSScriptRoot\tzdata"

$files = @(
    'africa'
    'antarctica'
    'asia'
    'australasia'
    'europe'
    'northamerica'
    'southamerica'
)

$raw = @()
ForEach ($f in $files) {
    $fp = "$path\$f"
    $raw += Get-Content -Path $fp | ? { $PSItem -imatch "^\s*Rule"}
}

$rawCount = $raw.Count

$tzrules = @()

For ($i=0; $i -lt $rawCount; $i++) {
    $line = $raw[$i]
    
    $c = $line -split "#",2
    $comment = if ($c.count -gt 1) {
        $c[1].Trim()
    } else { "" }
    
    $data = $c[0].Trim()
    $fdata = $data -split "\s+",0,"RegexMatch"

    if ($fdata.count -lt 10) { throw $fdata.count }
    
    $rname = $fdata[1]
    $sYear = [int]$fdata[2]
    $eYEar = if ($fdata[3] -eq "only") {
        $sYear
    } elseif ($fdata[3] -eq "max") {
        ""
    } else {
        [int]$fdata[3]
    }

    $month = $fdata[5]
    $dayRule = $fdata[6] 
    $timeOfday = $fdata[7]
    $offset = $fdata[8]
    $s = $fdata[9]

    $tzrules += [PSCustomObject]@{
        Name=$rname
        SYear = $sYear
        EYear = $eYear
        Month = $month
        DayRule = $dayRule
        Time = $timeOfDay
        Offset = $offset
        Token = $s
        Comment = $comment
    }
    
}

$tzrules | Export-Csv -Path "$PSScriptRoot\TimeZoneRules.csv" -NoTypeInformation
