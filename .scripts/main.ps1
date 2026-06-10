# Release.Create
gh release create week01-20260316 --title "test릴리즈제목" --notes "test릴리즈내용"

gh release create week01-20260315 --title "Spring Boot 첫 걸음" --notes "공부한 내용 요약..."
gh release create week01-20260315 --title "[1주차] Spring Boot 첫 걸음" --notes "공부한 내용 요약..."
gh release create 2026-03-15 --title "[1주차] Spring Boot 첫 걸음" --notes "공부한 내용 요약..."


gh release create week01-20260315 --title "Spring Boot 첫 걸음" --notes "공부한 내용 요약..."




<# 
PS C:\github-nangmanhunter\bitcopark-logs> $env:GIT_COMMITTER_DATE="2026-03-15 20:00:00"
>> git tag -a 2026-03-15 -m "0주차 스터디 태그"


❌
PS C:\github-nangmanhunter\bitcopark-logs> gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..."
tag 2026-03-15 exists locally but has not been pushed to bitcopark/logs, please push it before continuing or specify the `--target` flag to create a new tag

❌Target.Tag
PS C:\github-nangmanhunter\bitcopark-logs> gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..." --target 2026-03-15
HTTP 422: Validation Failed (https://api.github.com/repos/bitcopark/logs/releases)
tag_name is not a valid tag
Published releases must have a valid tag
Release.target_commitish is invalid

✅Target.Brach
PS C:\github-nangmanhunter\bitcopark-logs> gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..." --target main
https://github.com/bitcopark/logs/releases/tag/2026-03-15


#>
# Windows
$env:GIT_COMMITTER_DATE="2026-03-15 20:00:00"
git tag -a 태그이름 -m "0주차 스터디 태그"
gh release create 태그이름 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..."
Remove-Item env:GIT_COMMITTER_DATE # 환경 변수 초기화


$env:GIT_COMMITTER_DATE="2026-03-15 20:00:00"
git tag -a 2026-03-15 -m "0주차 스터디 태그"
gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..."
Remove-Item env:GIT_COMMITTER_DATE # 환경 변수 초기화




# Linux
# 1단계: 3월 15일 날짜를 먹인 "기술적 태그"를 먼저 로컬에 생성하기
# GIT_COMMITTER_DATE="2026-03-15 20:00:00" git tag -a 2026-03-15 -m "0주차 스터디 태그"

# 2단계: 방금 날짜를 속여서 만든 태그를 '타겟'으로 지정해서 릴리즈 만들기
gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..."



gh release create 2026-03-15 --title "[0000주차] Spring Boot 첫 걸음" --notes "00000공부한 내용 요약..." --target main






# Release.Check
exploerer https://ungh.cc/repos/bitcopark/logs/releases
exploerer https://ungh.cc/repos/내아이디/레포이름/releases




