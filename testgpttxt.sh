#!/bin/bash

# Function to append user input to a file
append_to_file() {
    read -p "Enter text to append: " user_input
    read -p "Enter the file path to append to: " file_path
    echo "$user_input" >> "$file_path"
    echo "Text '$user_input' appended to file: $file_path"
}

# Function to generate password wordlist
generate_wordlist() {
    read -p "Enter base word for wordlist: " base_word
    read -p "Enter maximum number of digits to append: " max_digits

    echo "Generating wordlist..."

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

    echo "Wordlist generated successfully: wordlist.txt"
}

# Main menu function
main_menu() {
    clear
    echo "1. Append text to a file"
    echo "2. Generate password wordlist"
    echo "0. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            append_to_file
            ;;
        2)
            generate_wordlist
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
}

# Call the main menu function
main_menu
