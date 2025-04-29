
$fname=Read-Host "Enter File Name"


if (Test-Path -path $fname){
	echo "File exist"
	exit  # exit from script
}

for($i=0; $i -lt 5; $i++){
	$var= Read-Host "Enter Some Text"
	add-content $fname $var    # append- cmdlet way
	# echo $var >> $fname      # append - redirection symbol way
}
