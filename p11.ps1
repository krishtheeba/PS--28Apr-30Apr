<#
Task
====

Write a powershell script

Given Array:

$emp= @("ram,sales,1000","Kumar,Hr,2000","Hari,Prod,2000")

Display the Emp Name and Working Department to <STDOUT>

Calculate the sum of Cost

Display Total emp cost to <STDOUT>

Expected Result
---------------

Emp Name : Ram   Working Department :Sales
Emp Name : Kumar   Working Department :Kumar
Emp Name : Hari   Working Department :Prod
---------------------------------------------
Total Employee's Cost:  5000
---------------------------------------------

#>

$emp= @("ram,sales,1000","Kumar,Hr,2000","Hari,Prod,2000")

$total=0

foreach($var in $emp){
	$n,$d,$c= $var.split(",")
	echo "Emp Name: $n`tWorking Department: $d"
	$total=$total + [int] $c
}

Write-Host "=========================================="
Write-Host "`t Total Employee's Cost : $total `t"
Write-Host "=========================================="































