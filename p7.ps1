<#
Task
====

Write a powershell script

read a hostname from <stdin>
hostname is oracle
		|
		read a port number from <stdin>
		Test range of port is 501-599
			|
			display hostname & portno

#>


$h= read-host "Enter the Hostname"
if($h -eq "oracle"){
	[int]$po=read-host "Enter the Portnumber"
	if($po -gt 500 -and $po -lt 600){
		write-host "Hostname : $h"
		write-host "Post number : $po"
	}else{
		write-host "Invalid Port Number"
	}
}else{
	write-host "Invalid Hostname"
}