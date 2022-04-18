#!/bin/sh

echo "Enter the password"
read password

len="${#password}"

if test $len -ge 8 ; then
	echo "$password" | grep -q [0-9]
	if test $? -eq 0 ; then
		echo "$password" | grep -q [A-Z]
		if test $? -eq 0 ; then
			echo "$password" | grep -q [a-z]
			if test $? -eq 0 ; then
				echo "Strong password"
			else
				echo "Weak password, should include lower case letters"
			fi
		else
			echo "Weak password, should include upper case letters"
		fi
	else
		echo "Weak password, should include numbers"
	fi
else
	echo "Password should contain at least 8 characters"
fi

