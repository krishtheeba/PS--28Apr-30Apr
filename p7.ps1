<#

Q3. Write a powershell script - display list of log files under current directory in below format.

1.p1.log
2.p2.log
3.p3.log
..
..
10.p10.log

Total no.of log files:10

#>

$c=0
foreach($v in Get-ChildItem *.log){
	
	$c++
	Write-Host "$c . $v"
}

echo "------------`nTotal No. of Log files : $c`n--------------"