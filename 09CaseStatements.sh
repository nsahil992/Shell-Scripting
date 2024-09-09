#!/bin/bash

while true 
do
echo "1. Shutdown"
echo "2. Restart"
echo "3. Exit Menu"

read -p "Enter your choice: " choice

case $choice in
	1) shutdown now ;;
	2) shutdown -r now ;;
	3) break ;;
	*) continue ;;
esac
done




echo "Enter the fruit: (apple, mango, strawberry, raspberry, kiwi)"
read fruit

case $fruit in 
	apple) echo "A red fruit! Great in Vitamin"
		;;
	mango) echo "King of all fruits"
		;;
	strawberry) echo "Good for teeth"
		;;
	raspberry) echo "Little expensive"
		;;
	kiwi) echo "Yum"
		;;
	*) echo "Sorry, I don't know that fruit"
		;;
esac
