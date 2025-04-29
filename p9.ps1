
foreach($v in Get-Content ".\dept.txt"){
	if($v -eq "Sales" -or $v -eq "Hr" -or $v -eq "QA"){
		continue
	}else{
		echo $v
	}
}