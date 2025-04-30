<#
Q1. Write a powershell script

step1 : create an empty array : $hosts=@()

step2 : Using while loop - 5 times
		read hostname from <STDIN>
		Add input hostname to existing array
step3: Display Total no. of array elements

step4: Using foreach loop - display list of elements

step4: Modify 1st Index hostname--->   127.0.0.1

step5: Step4 updated hostname details.

#>

$my_hosts=@()  # empty Array
echo "Size : $($my_hosts.count)"
$c=0
while($c -lt 5){
	$v=Read-Host "Enter the Hostname" # reading data from <STDIN>
	$my_hosts += $v   #append operation-->  $my_hosts= $my_hosts + $v
	$c++
}

echo "
List of Hostname Details:-
--------------------------"

foreach($v in $my_hosts){
	echo $v
}
#Modification - update existing element
$my_hosts[1]="127.0.0.1"

echo "`nUpdated Hostname Details-
----------------------------"
foreach($v in $my_hosts){
	echo $v
}











