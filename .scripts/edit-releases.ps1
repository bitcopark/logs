$Tags=git tag
$Tags
foreach($Tag in $Tags){
    $Notes=Get-Content $PSScriptRoot\..\.assets\"$Tag.md" -Raw -Encoding utf8
    gh release edit $Tag --notes "$Notes"
}