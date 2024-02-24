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

    total_passwords=0

    for (( i=1; i<=$max_digits; i++ )); do
        for j in {0..9}; do
            echo "${base_word}${j}" >> wordlist.txt
            echo "${j}${base_word}" >> wordlist.txt
            echo "${j}${base_word}${j}" >> wordlist.txt
            echo "${base_word}${j}${base_word}" >> wordlist.txt
            echo "${base_word}${j}${base_word}${j}" >> wordlist.txt
            echo "${j}${base_word}${j}${base_word}" >> wordlist.txt
            total_passwords=$((total_passwords + 6))
        done
    done

    echo "$(printf "\e[1;32mWordlist generated successfully: wordlist.txt\e[0m")"
    echo "$(printf "\e[1;32mTotal number of passwords generated: $total_passwords\e[0m")"
}

# Function to print help message
print_help() {
    echo "Usage: $(basename "$0") [option]"
    echo "Options:"
    echo "  -a, --append     Append text to a file"
    echo "  -g, --generate   Generate password wordlist"
    echo "  -h, --help       Display this help message"
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

# Parse command-line options
while [[ $# -gt 0 ]]; do
    case "$1" in
        -a|--append)
            append_to_file
            exit 0
            ;;
        -g|--generate)
            generate_wordlist
            exit 0
            ;;
        -h|--help)
            print_help
            exit 0
            ;;
        *)
            echo "Error: Invalid option."
            print_help
            exit 1
            ;;
    esac
done

# Call the main menu function if no options are provided
main_menu
