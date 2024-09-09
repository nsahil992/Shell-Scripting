#!/bin/bash

function greet() {
	echo "Hello $1, Welcome to the world of Shell Scripting"
}

greet Sahil



addnum() {
	read -p "Enter your first number: " num1
	read -p "Enter your second number: " num2
	sum=$(( num1 + num2 ))
	echo "The sum of $num1 and $num2 is: $sum" 
}

addnum
