###Patch Tuesday

#Define weeks
#W1 = Patch Tuesday week (2nd tuesday of month)
#W2 = Patch Tuesday + 1 week
#W3 = Patch Tuesday + 2 weeks
#W4 = Patch Tuesday + 3 weeks

$week = 1

#offset
#3 = Friday
#4 = Saturday
#5 = Sunday

$offset = 4

for($i = 1; $i -le 12; $i++) {
    #Day 12 is the only day where it belongs in the same week as patch tuesday
    $BaseDate = ( Get-Date -Month $i -Day 12 ).Date
    $patchTuesday = $BaseDate.AddDays(2 - [int]$BaseDate.DayOfWeek)

    Write-Host Patch Tuesday is $PatchTuesday.ToString("MM/dd/yyyy") -ForegroundColor Yellow

    #Generate offset
    $OffSetWeek = $week - 1

    $PatchDate = $PatchTuesday.AddDays($OffSetWeek * 7 + $offset)

    Write-Host Patch Date: $PatchDate.DayOfWeek $PatchDate.ToString("MM/dd/yyyy") -ForegroundColor DarkGreen
}