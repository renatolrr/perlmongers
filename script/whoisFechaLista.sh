for line in $(cat perl_mongers_web.txt)
	do 
		# Whois 
		echo $line
		whois $line

    done
echo "######## DONE!"
echo ""
