#!/bin/bash


#Script That Checks the process status

printf "============================================\n"
printf "     	      PROCESS CHECKER \n"
printf "============================================ \n"

while true
do
	printf "1.Check Process Status \n"
	printf "2.Exit \n"
	echo""

	read -p "Enter Your Choice:" choice
	echo""

	case "$choice" in
		1)
			read -p "Enter the Process Name:" Pname
			echo""

			if [ -z "$Pname" ]
			then 
				printf "Process name cannot be empty , Try Again... \n"
				printf "============================================ \n"
				continue
			fi

			process=$(pgrep -x -d "," "$Pname")
        		if [ "$process" ]
       			then
                		printf "Process Status: RUNNING \n"
                		printf "Process Name: $Pname \n"
				printf "Process ID: $process \n"
        		else
                		printf "Process Status: NOT RUNNING \n"
               			printf "No active process found with name: $Pname \n"
        		fi
			;;
		2)
			printf "Thank you for Running the Script... Goodbye! \n"
			exit 0
			;;
		*)
			printf "Invalid choice Try Again... \n"
			;;
	esac

	printf "===========================================\n"
done
