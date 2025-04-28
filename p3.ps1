<#  .....Multiline comment

Task
====

Using  write-host (or) echo alias(or) write-output , - display following details
hostname
total no. of running process

Note:- hostname --->cmd
        (get-process).length

#>

$v=$(hostname)

echo "My System Hostname : $v"

$c= (Get-Process).length      # $c=$(Get-Process).length

echo " Total No. Of Process : $c"

