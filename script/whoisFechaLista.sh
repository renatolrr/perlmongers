for line in $(cat perl_mongers_web1.txt)
	do 
		# Whois 
		whois $line
    done
echo "######## DONE!"
echo ""
