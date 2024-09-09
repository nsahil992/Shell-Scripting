#!/bin/bash

for (( i=1; i<=5; i++ ));
do
	echo "Shell-Scripts-for-Rookies"
done



for num in {1..5};
do
	echo "Number: $num"
done



fruits=("Apple" "Banana" "Strawberry" "Raspberry")

for fruit in "${fruits[@]}"
do
	echo "Fruit is: $fruit"
done

