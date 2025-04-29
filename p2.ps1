<#
task
=====
1.Write a powerscript

Initialize variable $pin=1234

read a input pin from pin from <STDIN>

compare input pin with existing $pin

task 
2. Modify above with 3 attempts

max attempts is 3

Note :- while , for
#>


<#
while
-----
initialization
while(condition){
	codeblock
	increment/decrement   $c=$c+1   (or) $c++ 
}


#>

$pin=1234


$c=0
while($c -lt 3){

	[int]$p= Read-Host "Enter the PIN"

	$c++

	if( $pin -eq $p){
		echo "Success. Pin Matched at $c attempt "
		break # exit from loop
	}else{
		echo "Pin Not Matched"
	}

}

if($pin -ne $p){
	echo "PIN Blocked"
}