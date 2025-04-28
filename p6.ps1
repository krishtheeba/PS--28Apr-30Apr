<#
Task
====

Write a powershell script

read a login name from <STDIN>
  
test login name is "root"     ----- condition(1)
	|
	read a shell name from <STDIN>
	test sh (or) bash (or) PSH     // anyone matched    ---- condition(2)
			|----> display login name and shell

#>


$name=read-host "Enter the Login name"

if( $name -ceq "root"){

	$var= read-host "Enter the Shell name"
	if ($var -eq "psh" -or $var -eq "sh" -or $var -eq "ksh"){
		write-host "Login Name: $name `t Login Shell: $var"
	}
	else{
		echo "Invalid Shell name"
	}
}else{
	echo "Login name $name is not matched"
}







