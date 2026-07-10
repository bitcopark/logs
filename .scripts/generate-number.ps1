# week01~
$i= 1;
$startDate = [datetime]"2024-11-18"
$endDate   = [datetime]"2025-05-03"

while ($startDate -le $endDate) {

    "week$($i.ToString("D2"))-$($startDate.ToString("yyyyMMdd"))"

    $i++
    $startDate = $startDate.AddDays(7) 
}


# week22~
$i= 22;
$startDate = [datetime]"2025-05-10"
$endDate   = [datetime]"2026-06-09"

while ($startDate -le $endDate) {

    "week$($i.ToString("D2"))-$($startDate.ToString("yyyyMMdd"))"

    $i++
    $startDate = $startDate.AddDays(14) 
}