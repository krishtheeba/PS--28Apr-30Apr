$fname=Read-Host "Enter File Name"


if (Test-Path -path $fname){
	echo "File exist"
	exit  # exit from script
}

for($i=0; $i -lt 5; $i++){
	$var= Read-Host "Enter Some Text"
	set-content $fname $var    # overwrite if data exist already- cmdlet way
	# echo $var > $fname      #  redirection symbol way
}


####################################################################################
(base) PS C:\Users\theeba\PS\day2> cat p3.ps1

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

(base) PS C:\Users\theeba\PS\day2> powershell .\p3.ps1
Enter File Name: sample.txt
File exist
(base) PS C:\Users\theeba\PS\day2> notepad p4.ps1
(base) PS C:\Users\theeba\PS\day2> cat p4.ps1
$fname=Read-Host "Enter File Name"


if (Test-Path -path $fname){
        echo "File exist"
        exit  # exit from script
}

for($i=0; $i -lt 5; $i++){
        $var= Read-Host "Enter Some Text"
        set-content $fname $var    # overwrite if data exist already- cmdlet way
        # echo $var > $fname      #  redirection symbol way
}

(base) PS C:\Users\theeba\PS\day2> powershell .\p4.ps1
Enter File Name: example.txt
Enter Some Text: data1
Enter Some Text: data2
Enter Some Text: data3
Enter Some Text: data4
Enter Some Text: data5
(base) PS C:\Users\theeba\PS\day2> get-content example.txt
data5
(base) PS C:\Users\theeba\PS\day2>