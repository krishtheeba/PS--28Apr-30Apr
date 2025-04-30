$name=read-host "Enter the Employee Name"

if($name -cmatch "^[A-Z][a-z]+$"){
	echo "Valid Format"
}
else{
	echo "Sorry $name is invalid format"
	exit
}

$id=read-host "Enter the Employee Id"

if($id -match "^[A-E]\d{3}$"){      
	echo "Valid Format"
}
else{
	echo "Sorry $id is in InValid Format"
	exit
}

echo "Name:$name`tID:$id"
