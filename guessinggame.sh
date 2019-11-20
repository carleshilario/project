#!/usr/bin/env bash
# File: gessinggame.sh

#Counting number of files in the current directory
#Here is the function

function count {
	files=$(ls -1 | wc -l)
}

count

#Asking numbers of files

echo "How many files are in this directory?"
echo "Please enter a number:"
read guessvalue
echo "you entered" $guessvalue

#Compare values
#Here is the loop and the if statement

while [[ $guessvalue -ne $files ]]
do

	if [[ $guessvalue -gt $files ]]
	then
		echo $guessvalue "is too high"
	else
		echo $guessvalue "is too low"
	fi

	echo "Try again:"
	read guessvalue

done

echo "Congratulations, you win!"
