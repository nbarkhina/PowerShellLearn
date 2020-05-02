Import-Module .\functions.ps1

# Example - declaring variables, they should start with $
# $neil = "neil"
$num = 5
$array = 3,4,5,6


# Example - printing an array
foreach ($x in $array)
{
    'Printing an Array: ' + $x*2
}


# Example - iterating an array and sending it directly to a file,
#           instead of a foreach here we are using shorthand % 
#           and special variable $_ in place of $x above
# $array | % { $_*2 } | Out-File -FilePath 'nums.txt'


# Example - running a function and sending the output to a file
# MultiplySomeStuff -number $num | Out-File -FilePath 'Neil.txt'


# Example - calling a function, in this case the function is defined in antother file
$newnum = MultiplySomeStuff -number $num
"Multiplication Result: "+$newnum #Example1 - concatenate strings
Write-Host "Multiplication Result:" $newnum #Example2 - same thing but with write host
Write-Host "Multiplication Result:" (MultiplySomeStuff -number $num) #Example3 - calling it directly




# Example filtering an array using Where-Object
#         can also use ? as shorthand, in PowerShell
#         instead of using > use -gt
$array | Where-Object  { $_ -gt 3 }


# Example - to print to the console just say the thing
"Finished"

