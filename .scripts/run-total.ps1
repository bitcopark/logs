<# 
- 다른방식ㄱㄱ.
  - 이방식 너무느리다. 
  - 너무오래걸린다. 
  - 너무손많이간다.
- 대안
  - 자동화방식ㄱㄱ.
  - 더자동화방식 찾을것ㄱㄱ.

- 정리
  - 아카이빙ㄱㄱ.
#>
. $PSScriptRoot\run-onecommit.ps1


# 8. GitHub에 브랜치 강제 푸시 (과거 선들 청소)
. $PSScriptRoot\push-commits.ps1



# tag-create
. $PSScriptRoot\create-tags.ps1


# 9. GitHub에도 태그들을 강제로 덮어씌워 푸시 (원격 유령 줄기 박멸)
$existingTags = git tag
foreach ($tag in $existingTags) {
    if ($tag) {
        git push origin refs/tags/$tag --force

        
        # [안전장치] 혹시 기존에 존재하던 GitHub 릴리즈가 있다면 먼저 삭제 (코드/태그는 안 날아감)
        # gh release delete $tag --yes 2>$null


        # gh CLI로 깨끗한 새 릴리즈 생성 (제목은 태그명으로, 본문은 자동 생성)
        gh release create $tag --title "Release $tag" --notes "싱글 커밋 히스토리 통합 완료 버전" --target main
        Write-Host "🚀 $tag 버전의 릴리즈가 완벽하게 갱신되었습니다." -ForegroundColor Green

    }
}