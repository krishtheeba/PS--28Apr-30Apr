$c=0
foreach($v in Get-Content ".\sample.txt"){
	$c++
	if($c -eq 3){
		continue
	}
	else{
		echo $v
	}
}	
	