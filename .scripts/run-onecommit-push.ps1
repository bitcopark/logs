<# 
- 커밋변동되면 태그도바꿔줘야함.
  - 태그부분 커밋들 싹바꿔줘야함. 태그삭제하고 재생성하는형태. 
  - 이부분 작업이 좀걸리긴함.
  - 부득이함.
#>
. $PSScriptRoot\run-onecommit.ps1

. $PSScriptRoot\push-commits.ps1
. $PSScriptRoot\push-tags.ps1