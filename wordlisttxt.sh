#!/bin/bash

# Function to append user input to a specified file
append_to_file() {
    read -p "$(printf "\e[1;33mEnter text to append: \e[0m")" user_input
    read -p "$(printf "\e[1;33mEnter the file path to append to: \e[0m")" file_path
    echo "$user_input" >> "$file_path"
    echo "$(printf "\e[1;32mText '$user_input' appended to file: $file_path\e[0m")"
}

# Function to generate password wordlist
generate_wordlist() {
    read -p "$(printf "\e[1;33mEnter base word for wordlist: \e[0m")" base_word
    read -p "$(printf "\e[1;33mEnter maximum number of digits to append: \e[0m")" max_digits


    
    echo "$(printf "\e[1;34mGenerating wordlist...\e[0m")"


    for (( i=1; i<=$max_digits; i++ )); do
        for j in {0..9}; do
            echo "${base_word}${j}" >> wordlist.txt
            echo "${j}${base_word}" >> wordlist.txt
            echo "${j}${base_word}${j}" >> wordlist.txt
            echo "${base_word}${j}${base_word}" >> wordlist.txt
            echo "${base_word}${j}${base_word}${j}" >> wordlist.txt
            echo "${j}${base_word}${j}${base_word}" >> wordlist.txt
        done
    done

    echo "$(printf "\e[1;32mWordlist generated successfully: wordlist.txt\e[0m")"
}

# Main menu function
main_menu() {
    clear
    echo "$(printf "\e[1;35m-- Main Menu --\e[0m")"
    echo "$(printf "\e[1;36m1. Append text to a file\e[0m")"
    echo "$(printf "\e[1;36m2. Generate password wordlist\e[0m")"
    echo "$(printf "\e[1;36m0. Exit\e[0m")"
    read -p "$(printf "\e[1;33mEnter your choice: \e[0m")" choice

    case $choice in
        1)
            append_to_file
            ;;
        2)
            generate_wordlist
            ;;
        0)
            echo "$(printf "\e[1;31mExiting...\e[0m")"
            exit 0
            ;;
        *)
            echo "$(printf "\e[1;31mInvalid choice!\e[0m")"
            ;;
    esac
}

# Call the main menu function
main_menu



# Function to measure loading time
measure_loading_time() {
    echo "Script loading started..."
    SECONDS=0  # Start the timer
}

# Function to display loading time
display_loading_time() {
    duration=$SECONDS  # Get the duration
    echo "Script loading completed in $duration seconds."
}

# Call the function to start measuring loading time
measure_loading_time

# Your script code goes here
# For example:
echo "Generating wordlist..."
sleep 2  # Example task: sleeping for 2 seconds
echo "Wordlist generated."

# Call the function to display loading time
display_loading_time



git remote add origin https://github.com/KnT-SeaWolf/myprogram.git

git remote add origin https://github.com/KnT-SeaWolf/mylessl.git