<#
Property.txt
------------
Onboot=True
bootProto=null



Task
----
step1: Create an empty Hash  $h=@{}
step2: Display Hash Size    
step3: Read a property File
step4: Using the property label as Key and property Value as hash value,
	add entries to the existing Hash  
		(key,value)

step 5: Display the HAsh Size
step 6: update the Onboot =False

#>

$h= @{}  # empty hash
echo "A. Size : $($h.count)"

foreach($var in Get-Content ".\Property.txt"){
	if($var -match "^$"){
		continue # ignore empty line
	}else{
		$k,$v= $var.split("=")
		$h[$k]=$v   # add new data to existing hash
	            	    # $h.add($k,$v)
	}
}

echo "B. Size : $($h.count)"

echo "`nProperty`tValues"
foreach($var in $h.keys){
	echo "$var `t $($h[$var])"
}

$h["Onboot"]="False"

echo "Updated Hash"

echo "`nProperty`tValues"
foreach($var in $h.keys){
	echo "$var `t $($h[$var])"
}

$fname=Read-Host "Enter the filename"

if(Test-Path $fname){
	Write-host "File already exist"
	exit
}else{
	foreach( $k in $h.keys){
		echo "$k`:$($h[$k])"  >> $fname   # Append /Write hash to file
	}
}










