# Hämtar rapporter och forwarding-adresser

$userEmail = "username@domain"

#Generera start- och slutdatum
Write-Host "Generera start- och slutdatum"
$startDayOffset = -30
$timeFormat = 'yyyy-MM-ddTHH:MM:ss.fffZ'
$startDate = (Get-Date).AddDays($startDayOffset) | Get-Date -Format $timeFormat
$endDate = Get-Date -Format $timeFormat

$reports = @('admin','login','drive')

ForEach ($report in $reports) {
    $gamReport = "gam report $report todrive user $userEmail start $startDate end $endDate"
    Invoke-Expression $gamReport
}

$gamCmd = "gam user $userEmail show forwardingaddresses"
Invoke-Expression $gamCmd