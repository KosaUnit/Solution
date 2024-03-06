function guessinggame {
	echo "How many files are in the current directory?"

	files_number=$(find . -type f | wc -l)

	while true; do

		read answer

		if [[ $answer -lt $files_number ]]; then
			echo "your answer was too low"
		elif [[ $answer -gt $files_number ]]; then
			echo "your answer was too high"
		else 
			echo "you'r right!"
			break
		fi
	done
}

guessinggame


