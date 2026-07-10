$Tag="week01-20241118"
$Notes=Get-Content $PSScriptRoot\..\.assets\"$Tag.md" -Raw -Encoding utf8
gh release edit $Tag --notes "$Notes"