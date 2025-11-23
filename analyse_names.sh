#!/bin/bash
report="/c/-----/analyse_report.txt"
echo -e "\nAnalysing Files " > "$report"
echo -e "\nFiles modified/updated with in 24hrs" >> "$report"
log_file=$(find . -name "*.txt" -mtime -1)
Search=("Cse" "IT" "eee" "ece")


echo -e "\nfiles are to be check is $log_file"  >> "$report"

for log in $log_file;do
	echo "$log" >> "$report"
	for dept in "${Search[@]}";do

	echo -e "\nfiles which contains $dept" >> "$report"
	grep -i "$dept" "$log" >> "$report"
	echo -e "\nno.of names that belongs to $dept" >> "$report"
	grep -ci "$dept" "$log" >> "$report"

	done
done
