all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\nThis project is a simple guessing game where the user guesses the number of files in the current directory." >> README.md
	echo "\n## Project Details" >> README.md
	echo "- Date and Time of Run: $$(date)" >> README.md
	echo "- Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
