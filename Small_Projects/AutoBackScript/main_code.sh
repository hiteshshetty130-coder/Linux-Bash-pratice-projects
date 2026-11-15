# !bin/bash
 
# Automated Backup Script

#variables and path Declaration for the script
SOURCE_DIR="./app"
BACKUP_DIR="./backups"
DATE=$(date "+%d_%m_%y")
BACKUP_PATH=$BACKUP_DIR/backups_$DATE

#Make a new Directory for the day backup
if [[ -d "$BACKUP_PATH" ]]
then
	final_info="BACKUP FAILED - DIRECTORY EXISTS"
else

	mkdir $BACKUP_PATH


	if cp -r /home/hithesh/AutoBackScript/$SOURCE_DIR  /home/hithesh/AutoBackScript/$BACKUP_PATH
	then
		final_info="BACKUP COMPLETED SUCCESSFULLY"
	else
		final_info="BACKUP FAILED"
	fi
fi


printf "============================================ \n"
printf "	       BACKUP REPORT \n"
printf "============================================ \n"
printf "Source             : $(realpath "$SOURCE_DIR") \n"
printf "Destination        : $(realpath "$BACKUP_PATH") \n"
printf "Status 	           : $final_info \n"
printf "============================================ \n"



