<# 

Release
- Title까지만 생성
- Notes이거는 파일긁어다ㄱㄱ.
#>
$Tags=git tag
$Tags
foreach($Tag in $Tags){

    $TagsParts=$Tag -split '-'
    $WeekStr=$TagsParts[0]
    $DateStr = $TagsParts[1] # '20250706' 문자열

    
    # 정규식 패턴: 'week' 뒤에 나오는 숫자(\d+)를 매칭합니다.
    # -replace 연산자 안에서 대소문자를 구분하지 않으므로 'week'를 'Week'로 바로 바꿀 수 있습니다.
    $Week = $WeekStr -replace 'week(\d+)', '[Week $1]'


    # 1. '20250706'을 날짜 객체로 정확히 파싱 (여기선 시스템 언어 안 탐)
    $ParsedDate = [datetime]::ParseExact($DateStr, "yyyyMMdd", $null)
    
    # 2. .NET 기능을 써서 강제로 영어(en-US) 요일로 문자열 추출! (대문자 원하면 뒤에 .ToUpper() 추가)
    $Date = $ParsedDate.ToString("yyyy.MM.dd ddd", [cultureinfo]"en-US")

    $ReleaseTitle="$Week $Date"

    Write-Output  "Release.Create👉$ReleaseTitle"
    gh release create $Tag --title $ReleaseTitle --notes ""
}
