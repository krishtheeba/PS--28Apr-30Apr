<#
Task
-----
Read a text file
Ignore empty line and display remaining data
#>


foreach($var in (Get-Content ".\IP.txt")){
if($var -match "^$"){
	continue
}else{
	echo $var
}
}