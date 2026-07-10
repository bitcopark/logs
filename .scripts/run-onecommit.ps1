


# 2. main 브랜치에서 과거 기록이 없는 orphan 브랜치 생성
git checkout --orphan temp-main

# 3. 현재 코드들을 전부 스테이징 영역에 올림
git add -A

# 4. 새로운 첫 커밋 생성
git commit -m "*** single-commit ***"

# 5. 기존의 찌꺼기 main 브랜치 삭제
git branch -D main

# 6. 현재 브랜치 이름을 'main'으로 변경
git branch -m main




# 기존태그.붙이기
git tag | % { git tag -f $_ }

