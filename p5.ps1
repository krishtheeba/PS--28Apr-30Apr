<#
$var= get-content ".\sample.txt"
echo $var
#>

$fname=read-host "Enter filename"
$var= get-content $fname
echo $var
