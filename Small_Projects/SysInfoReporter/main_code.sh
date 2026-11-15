# !/bin/bash

#System Information Reporter Code 
OS=$(awk -F '"' '/PRETTY_NAME/ { print $2 }' /etc/os-release)
Total_memory=$(free -h | awk '/Mem/ { print $2 }')
Used_memory=$(free -h | awk '/Mem/ { print $3 }')
Space=$(df -h / | awk 'NR==2 { print $5 }')
current_time=$(TZ="Asia/Kolkata" date '+%a %b %d %H:%M:%S %Z %Y')

printf '============================================== \n'
printf '         SYSTEM INFORMATION REPORTER \n'
printf '============================================== \n'

printf " Date and Time : $current_time \n"
printf " Username      : $(whoami) \n"
printf " Hostname      : $(hostname) \n"
printf " OS            : $OS \n"
printf " Uptime        : $(uptime -p) \n"
printf " Disk Usage    : %s Used. \n" "$Space"
printf " Memory        : $Used_memory used / $Total_memory total \n"

printf '============================================== \n'
printf '		END OF REPORT \n'
printf '============================================== \n'
