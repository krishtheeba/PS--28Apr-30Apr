<#
Task
-----

Write a powershell script

read N value - int type
read M value - double type
read X value - string type

display input value and its type
#>


$n= read-host "Enter N Value"
$m= read-host "Enter M Value"
$x= read-host "Enter X Value"

echo "Current Type and Value"
echo "
n value : $n `t Type: $($n.gettype().name)
m value : $m `t Type: $($m.gettype().name)
x value : $x `t Type: $($x.gettype().name)
"

$n=[int] $n # Typecast to int
$m=[Double] $m # Typecast to Floast/Double

echo "After Typecast
-------------------------------------------
n value : $n `t Type: $($n.gettype().name)
m value : $m `t Type: $($m.gettype().name)
x value : $x `t Type: $($x.gettype().name)
-------------------------------------------"