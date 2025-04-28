<#

Task
=====


Write a powershell script

read a shell name from <STDIN>

input shell name is bash ---> profile="~/.bashrc"

input shell name is sh ----> profile="~/.shrc"

input shell name if psh ---> profile="$PSHOME/profile.ps1"

|
|
all input not matched---> default profile file = "C:/profile.ps1"
			  default shell name ="/sbin/nologin"
|
display shell name and profile name

#>


$var= Read-Host "Enter the shell Name"

if( $var -eq "bash"){
	$p="~/.bashrc"
}elseif( $var -eq "sh"){
	$p="~/.shrc"
}elseif( $var -eq "ksh"){
	$p="~/.kshrc"
}else{
	Write-Host "Sorry $var shell is not Matched"
	$p="C:/profile.ps1"
	$var="/sbin/nologin"
}

Write-Host "Shell Name : $var `t Profile: $p"















