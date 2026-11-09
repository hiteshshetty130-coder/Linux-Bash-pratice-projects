#!/bin/bash

#Automatic File Organizer

main_folder="./downloads"

printf "======================================================= \n"
printf "		    FILE ORGANIZER \n"
printf "======================================================= \n"

printf "\n"
printf "Targeted Directory Path: $main_folder \n"
printf "\n"
printf "Organizing files... \n"
printf "\n"

count=0

#checking if the folder exists
if [ -d "$main_folder" ]
then
	#running a loop over the files in the downloads folder
	for file in "$main_folder"/*
	do
		#Check if it is a file or folder
	       if [ -f "$file" ]
	       then 
			
		       filename=$(basename "$file")
		       filename=${filename,,}

		       ext=${filename##*.}

			#check if there is no extension
		       if [ "$filename" == "$ext" ]
			then
				ext=""
			fi

			#case statements to organize the files in the folders 
			case "$ext" in 
				jpeg|jpg|png|gif)
					category="Images"
				;;
				doc|docx|pdf|txt)
					category="Documents"
					;;
				mp3|wav)
					category="Audios"
					;;
				sh|py)
					category="Scripts"
					;;
				*)
					category="Others"
					;;

			esac

			#if the folder does not exists create one and then move the file and also avoid same files.
			mkdir -p "$main_folder"/"$category"
			mv -n "$file" "$main_folder"/"$category"

			#if file exists print it exists else file and its folder name
			if [ -e "$file" ]
			then 
				printf "$(basename "$file") --> File Already Exists \n"
			else
				printf "Moved $(basename "$file") --> $category/ \n" 
				count=$((count+1))
			fi
		fi	
	done

else
	echo "Folder Doesnot Exists! Exiting..."
	exit 1
fi

#print how many files are organized
printf "\n"
printf "$count Files Organized \n"

printf "\n"
printf "======================================================= \n"
printf "		File Organization Completed \n"
printf "======================================================= \n"



