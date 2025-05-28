function Get-TargetDate {
    param (
        [int]$Year = (Get-Date).Year,
        [int]$Month = (Get-Date).Month
    )

    $firstDayOfMonth = Get-Date -Year $Year -Month $Month -Day 1
    $daysInMonth = [DateTime]::DaysInMonth($Year, $Month)
    $secondTuesday = $null

    for ($day = 1; $day -le $daysInMonth; $day++) {
        $currentDate = Get-Date -Year $Year -Month $Month -Day $day
        if ($currentDate.DayOfWeek -eq [System.DayOfWeek]::Tuesday) {
            if ($firstDayOfMonth.DayOfWeek -eq [System.DayOfWeek]::Tuesday -and $day -eq 8) { # First day is Tuesday, so second is the 8th
                $secondTuesday = $currentDate
                break
            } elseif ($currentDate.Day -gt 7 -and $currentDate.Day -le 14) { # General case for second Tuesday
                 $secondTuesday = $currentDate
                 break
            }
        }
    }

    if ($secondTuesday) {
    # Change the number here for days after second tuesday
        return $secondTuesday.AddDays(4)
    } else {
     # Should not happen ... but need this for troubleshooting...maybe.
        return $null
    }
}

$targetExecutionDate = Get-TargetDate
$today = (Get-Date).Date

If ($targetExecutionDate -and $targetExecutionDate.Date -eq $today) {
    Write-Host "Today is the day! Running the task."
    # Do the thing here
} Else {
    Write-Host "Not the target execution day. Target was $($targetExecutionDate.ToShortDateString())"
}
