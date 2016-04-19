#!/bin/sh

echo ""
echo "######## WHOIS: "$1

# Whois using the input variable
whois $1 |\

# Remove EOL characters
tr -d '\015\032' |\

# Remove leading spaces
sed 's/^ *//' |\

# Remove common unnecessary words from output
grep -v  -e "http://" -e "WHOIS" > wtmp1.txt

# Display all of the date lines and email addresses
grep -Eio '([[:alnum:]_.]+@[[:alnum:]_]+ ?\.[[:alpha:].]{2,6})' wtmp1.txt
egrep -i "ate: " wtmp1.txt 

# Remove the tmp file
rm -rf wtmp1.txt

echo "######## DONE!"
echo ""
