<#
Task
----
1.How to create a user defined var
#       $variable=value

2.Create a script file .
using write-host or echo or write-output to display details

login name   #  whoami

$name= $(whoami)
write-host "Login Name : $name"

powershell version  # (get-host).version
current working directory  # get-location
date(MM/DD/YYYY)  # (get-date -UFormat %m-%d-%y)

#>

$name= $(whoami)
$v=$(get-host).version
$mycwd=$(get-location)
$d=$(get-date -UFormat %m-%d-%Y)

write-host "Login Name : $name"
write-host "Working POwershell Version : $v"
write-host "Working Directory Path : $mycwd"
write-host "Today: $d"







