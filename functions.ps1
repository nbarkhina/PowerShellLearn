function MultiplySomeStuff([int]$number) {
    return $number*2
}
# Example - creating a function above

# Example - creating a module so that I can use this function in another file
Export-ModuleMember -Function 'MultiplySomeStuff'