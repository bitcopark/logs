$Tags=(Get-ChildItem $PSScriptRoot\..\.assets -File).BaseName
$Tags | % { git tag -f $_ }



