# guessinggame.sh

#!/bin/bash

function get_file_count {
  echo $(ls -1 | wc -l)
}

# Initialize the number of files and user guess
file_count=$(get_file_count)
user_guess=-1

# Game loop
while [[ $user_guess -ne $file_count ]]; do
  echo "How many files are in the current directory?"
  read user_guess

  if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
  elif [[ $user_guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $file_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed correctly."
  fi
done
