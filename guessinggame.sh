# Function to count the number of files in the current directory
count_files() {
  local count=$(ls -l | grep "^-" | wc -l)
  echo "$count"
}

# Generate a random number of files
target=$(count_files)

# Game loop
while true; do
  read -p "Guess the number of files in the current directory: " guess

  if [[ $guess -eq $target ]]; then
    echo "Congratulations! You guessed the correct number of files."
    break
  elif [[ $guess -lt $target ]]; then
    echo "Too low. Try again."
  else
    echo "Too high. Try again."
  fi
done
