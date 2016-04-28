for line in $(cat file.txt)
	do 
		# Whois 
		echo $line
		whois $line

    done
echo "######## DONE!"
echo ""
