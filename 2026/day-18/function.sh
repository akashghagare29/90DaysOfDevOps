#!/bin/bash

# Create functions.sh with:
# A function greet that takes a name as argument and prints Hello, <name>!
# A function add that takes two numbers and prints their sum
# Call both functions from the script

greet(){

        read -p "Enter the name: " name
        echo "Hello, $name!"
}

sum(){
        read -p "Enter the two numbers: " num1 num2
        sum=$(( $num1 + $num2 ))
        echo "The sum of two numbers is: " $sum
}

greet
sum

