while(1){

echo "
#######################SYSTEM INFO#########################
#							  #
#	1. List top 10 process 				  #
#       2. List Running Service				  #
#       3. Total no. of Alias				  #
#       4. Display process details                        #
#       5. Display Login Path and Login Name              #
#	6. Exit						  #
###########################################################

"

[int] $choice = read-host "Enter the Choice"

if($choice -eq 1){
	cls
	$c=0
	foreach( $v in get-process){
		$c++
		if($c -le 10){
			echo $v
		}else{ break}
	}
}

elseif( $choice -eq 2){
	cls
	echo "______________________________________"
	Get-Service|Where-Object {$_.status -eq "Running"}
	echo "_____________________________________"
	echo "Total no. of Running Services : $((Get-Service|Where-Object {$_.status -eq "Running"}).length)"	
	echo "____________________________________________"
}

elseif($choice -eq 3){
	cls
	$v=$((Get-Alias).length)
	echo "Total no. of Alias : $v"
}

elseif($choice -eq 4){
	cls
	echo "Current Process"
	Get-Process
}

elseif($choice -eq 5){
	cls
	echo "Login NAme :$(whoami)`t LoginPath :$HOME"
}

elseif($choice -eq 6){
	echo "THankyou..";break
}

else{
	echo "Invalid Choice"
}

}	
		