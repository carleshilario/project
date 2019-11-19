#Counting the number of files

files=$(ls -1 | wc -l)
echo "number of files:" $files 

#Asking the numbers of files 

echo "How many files are in this directory?"
echo "Please enter a number:"
read guessvalue
echo "you entered" $guessvalue

#Comparing values

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
