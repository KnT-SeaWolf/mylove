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

    echo "$(printf "\e[1;36mGenerating wordlist...\e[0m")"

    measure_loading_time
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

# Function to print help menu
help_menu() {
    printf "\n"
    printf "\e[1;35m-- Help Menu --\e[0m\n"
    printf "\e[1;36mThis script allows you to perform the following actions:\e[0m\n"
    printf "\n"
    printf "\e[1;36m1. Append text to a file\e[0m\n"
    printf "\e[1;36m2. Generate a password wordlist\e[0m\n"
    printf "\e[1;36m0. Exit\e[0m\n"
    printf "\n"
    printf "\e[1;36mTo select an option, enter the corresponding number.\e[0m\n"
    printf "\e[1;36mYou can also use command-line options to perform specific actions:\e[0m\n"
    printf "\n"
    printf "\e[1;36mUsage:\e[0m\n"
    printf "\e[1;36m  $(basename "$0") [option]\e[0m\n"
    printf "\n"
    printf "\e[1;36mOptions:\e[0m\n"
    printf "\e[1;36m  -a, --append     Append text to a file\e[0m\n"
    printf "\e[1;36m  -g, --generate   Generate a password wordlist\e[0m\n"
    printf "\e[1;36m  -h, --help       Display this help message\e[0m\n"
    printf "\n"
}




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






# Main menu function
main_menu() {
    clear
    echo "$(printf "\e[1;31m --\e[0m\e[1;36m\e[5mMain Menu\e[25m\e[0m\e[1;31m--\e[0m")"
    echo "$(printf "\e[1;31m[\e[0m\e[1;77m1\e[0m\e[1;31m]\e[0m\e[1;36m. Append text to a file\e[0m")"
    echo "$(printf "\e[1;31m[\e[0m\e[1;77m2\e[0m\e[1;31m]\e[0m\e[1;36m. Generate password wordlist\e[0m")"
    echo "$(printf "\e[1;31m[\e[0m\e[1;77m3\e[0m\e[1;31m]\e[0m\e[1;36m. Help Menu\e[0m")"
    echo "$(printf "\e[1;31m[\e[0m\e[1;77m0\e[0m\e[1;31m]\e[0m\e[1;36m. Exit\e[0m\n")"
    read -p "$(printf "\e[1;33mEnter your choice: \e[0m\n")" choice

    case $choice in
        1)
            append_to_file
            ;;
        2)
            generate_wordlist
            display_loading_time
            ;;
        3)
            help_menu
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
            help_menu
            exit 0
            ;;
        esac
       
done 



main_menu


