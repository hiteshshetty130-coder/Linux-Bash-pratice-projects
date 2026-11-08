#!/bin/bash

#Menu Driven Calculator script

printf "================================================= \n"
printf "		BASH CALCULATOR \n"
printf "================================================= \n"


choice=0

#Run the script until the user clicks 5(Exit)
while [ "$choice" -ne 5 ]
do
	printf "1.Addition \n"
	printf "2.Subscration \n"
	printf "3.Multiplication \n"
	printf "4.Division \n"
	printf "5.Exit \n"
	printf "\n"

	result=0
	read -p "Enter Your Choice:" choice
	printf "\n"

	if [[ "$choice" -eq 5 ]]
	then 
		printf "Exiting... Thank You \n"
		printf "====================================================== \n"
		exit 1
	fi
	
	if [ "$choice" -ge 1 ]&&[ "$choice" -le 4 ]
	then

	read -p "Enter the First Number: " First
	read -p "Enter the Second Number:" Second
	printf "\n"

	#bc- basic calculator utility for decimal calculation
	case $choice in 
		1)
			result=$(echo "$First + $Second" | bc)
			printf "Result = %s \n" "$result"
			;;
		2)
			result=$(echo "$First - $Second" | bc)
			printf "Result = $result \n"
			;;
		3)	
			result=$(echo "$First * $Second" | bc)
			printf "Result = $result \n"
			;;
		4)	
			is_zero=$(echo "$Second" == 0 | bc)
			if [[ "$is_zero" -eq 1 ]] 
			then
				 printf "Divison By Zero Not allowed \n"
			else
				result=$(echo "scale=2; $First / $Second" | bc)
				printf "Result = $result \n \n "
			fi
			;;

	esac
else
	printf "Invalid Choice Try Again...\n"
fi
printf "================================================== \n"
printf "\n"
done

