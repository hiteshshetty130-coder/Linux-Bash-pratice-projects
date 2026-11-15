#!/bin/bash

#Application Log Monitoring Script

cd "$(dirname "$0")" || exit 1

logs="../logs/App.log"
checkpoint="../state/checkpoint.txt"
alerts="../reports/Alerts.log"
summary_file="../reports/summary.txt"

#checks if the logs file exists or not
validate_log()
{
	if [ ! -e "$logs" ]
	then
		printf "The file does not exists \n" >&2
		exit 1
	fi

	#checks if the log file as a readable permission
	if [ ! -r "$logs" ]
	then 
		printf "The File is not readable \n" >&2
		exit 1
	fi

	#checks if the logs file is empty
	if [ ! -s "$logs" ]
	then 
		printf "The file is empty \n" >&2
		exit 1
	fi

}

#function to get the checkpoint value
read_checkpoint()
{
	if [ -f "$checkpoint" ]
	then 
		check_number=$(cat "$checkpoint")
	else
		check_number=0
	fi


	total_lines=$(wc -l < "$logs")

	if [ "$total_lines" -lt "$check_number" ]
	then 
		check_number=0
		printf "WARNING .. Log was rotated or truncated, starting from line 1\n" >&2
	fi

}


#append the alerts to the Alerts.log file
write_alerts()
{
	if [ -n "$errors" ]
	then

		if ! printf "%s\n" "$errors" >> "$alerts"
		then
			echo "Could not write to the alerts file" >&2
			exit 1
		fi
	fi
}

#function to write the summary
write_summary()
{
{ printf "Application Log Monitoring Summary\n"
printf "Execution Date: %s\n" "$(TZ="Asia/Kolkata" date '+%d-%m-%y  %H-%M-%S')"
printf "New Entries Processed: %s\n" "$((total_lines-check_number))"
printf "ERROR Events: %s\n" "$error_count"
printf "CRITICAL Events: %s\n" "$critical_count"
printf "Total Alerts: %s\n" "$total_count"

#if there is recurring messages display it
if [ -n "$recurring" ]
then 

	printf "======Recurring Messages======\n"
	printf "%s\n" "$recurring"
	printf "Recurring count: %s\n" "$recurring_count"
fi
} > "$summary_file" || return 1
}



validate_log
read_checkpoint


#start from the check point value and get the error and critical messages
new_line=$(tail -n +$((check_number + 1)) "$logs")
critical_count=$(printf "%s\n" "$new_line" | awk '$3 == "CRITICAL"' | wc -l)
error_count=$(printf "%s\n" "$new_line" | awk '$3 == "ERROR"' | wc -l)
errors=$(printf "%s \n" "$new_line" | awk '$3 == "ERROR" || $3 == "CRITICAL"')
total_count=$((critical_count + error_count))

write_alerts



#while printing show the critical errors diffrently
if [ -n "$errors" ]
then
	printf "%s\n" "$errors" | awk '$3 == "CRITICAL" {print "!!! " $0; next} {print}'
fi

#get the recurring errors
recurring=$(printf "%s\n" "$errors" | awk '{$1=$2=$3="";print substr($0,4)}' | sort | uniq -c | sed 's/^ *//'| awk '$1>1')
recurring_count=$(printf "%s\n" "$recurring" | awk 'NF' | wc -l)

if ! write_summary
then
	printf "ERROR, could  not write the summary file\n" >&2
	exit 1
fi



if [ -n "$recurring" ]
then
	printf "$recurring \n"
fi

#append the total lines to the check point for next execution
echo "$total_lines" > "$checkpoint"
printf "Total Error and Critical Count: %s\n" "$total_count" 












