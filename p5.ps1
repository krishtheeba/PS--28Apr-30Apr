$n=33
if($n -gt 500){
	write-host "True only"
}else{
	write-host "False block"
}


$name="root"

if($name -eq "root"){
	write-host "Login is success"
}
else{
	write-host "Login is failed"
}

if((Get-process).length -lt 100){
	write-host "Total no. of process count is less than 100"
}
else{
	write-host "No. of process is above 100"
}