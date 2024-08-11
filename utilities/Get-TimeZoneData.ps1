

$path = "$PSScriptRoot\tzdata"

$files = @(
    'africa'
    'antarctica'
    'asia'
    'australasia'
    'etcetera'
    'europe'
    'northamerica'
    'southamerica'
)

$raw = @()
ForEach ($f in $files) {
    $fp = "$path\$f"
    $raw += Get-Content -Path $fp | ? { $PSItem -inotmatch "^\s*$|^\s*#|^\s*Rule|^\s*Link"}
}

$rawCount = $raw.Count

$startLines = @()
For ($i=0; $i -lt $rawCount; $i++) {
    if ($raw[$i] -imatch "^\s*Zone\s") {
        $startLines += $i
    }
}

$zoneCount = $startLines.Count
$startLines += $rawCount

$tzinfo = @()

For ($i=0; $i -lt $zoneCount; $i++) {
    $thisZoneStart = $startLines[$i]
    $thisZoneEnd = $startLines[$i+1] - 1
    $flineParts = ($raw[$thisZoneStart] -replace "^\s*Zone\s+","") -split "\s+", 2, "RegexMatch"
    $zname = $flineParts[0]
    $dataLines = @()
    $dataLines += $flineParts[1]
    if ($thisZoneEnd -gt $thisZoneStart) {
        $dataLines += ($raw[($thisZoneStart+1)..$thisZoneEnd] -replace "^\s*","")
    }

    foreach ($d in $dataLines) {
        $c = $d -split "#",2
        $comment = if ($c.count -gt 1) {
            $c[1].Trim()
        } else { "" }
        
        $data = $c[0].Trim()
        $fdata = $data -split "\s+",0,"RegexMatch"

        $tzinfo += [PSCustomObject]@{
            Name=$zname
            STDOFF = $fdata[0]
            Rule= $fdata[1]
            Format = $fdata[2]
            Year = $fdata[3]
            Month = $fdata[4]
            Day = $fdata[5]
            Time = $fdata[6]
            Comment = $comment
        }
    }
}

$tzinfo | Export-Csv -Path "$PSScriptRoot\TimeZoneData.csv" -NoTypeInformation
