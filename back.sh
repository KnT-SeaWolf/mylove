#!/bin/bash 









my_banner() {
    printf "\e[0m\e[1;45m[🥰 Select for any heaven of your life. 🥰]\e[0m\n"
    printf "\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;36m Update for your Linux-Mint         \e[0m\e[1;31m[\e[0m\e[1;77m09\e[0m\e[1;31m]\e[0m\e[1;36m The Kingdom of Night warrior \e[0m\e[1;31m\e[1mBashScript\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;36m Any Dream of Check && Install APT  \e[0m\e[1;31m[\e[0m\e[1;77m10\e[0m\e[1;31m]\e[0m\e[1;36m The Marathon of NASA Hacker \e[0m\e[1;31m\e[1mHTML\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;36m The Emperor of Counsellor OhmyZsh  \e[0m\e[1;31m[\e[0m\e[1;77m11\e[0m\e[1;31m]\e[0m\e[1;36m The Spartacus battle field of \e[0m\e[1;31mBurmese-Python\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;36m The Angel flower lolcat            \e[0m\e[1;31m[\e[0m\e[1;77m12\e[0m\e[1;31m]\e[0m\e[1;36m The Monti Cristo of setup Snap kitchen\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;36m Fuck of Poor Ethics Gtk-themes     \e[0m\e[1;31m[\e[0m\e[1;77m13\e[0m\e[1;31m]\e[0m\e[1;36m The Woman of Rome the Pycharm-community\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[1;36m Fuck of Poor Ethics Gtk-icon       \e[0m\e[1;31m[\e[0m\e[1;77m14\e[0m\e[1;31m]\e[0m\e[1;36m The Scarlet lady of the Vscode-snap\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[1;36m Memories last forever Joplin       \e[0m\e[1;31m[\e[0m\e[1;77m15\e[0m\e[1;31m]\e[0m\e[1;36m The Fall of Paris on the Joplin-desktop\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[1;36m Keep up of dreaming Sublime-text   \e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;36m The Freedom from fear of the Hell (Exit-e)\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m-H\e[0m\e[1;31m]\e[0m\e[1;36m help menu options                  \e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;36m The Freedom from fear of the Hell (Exit-e)\e[0m\n"
    printf "\e[1;31m[\e[0m\e[1;77m-H\e[0m\e[1;31m]\e[0m\e[1;36m help menu options                  \e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;36m The Freedom from fear of the Hell (Exit-e)\e[0m\n"
    printf "\e[0m\n"

    

}


main_menu() {
    clear
    echo "$(printf "\e[1;35m-- Main Menu --\e[0m")"
    echo "$(printf "\e[1;36m1. Append text to a file\e[0m")"
    echo "$(printf "\e[1;36m2. Generate password wordlist\e[0m")"
    echo "$(printf "\e[1;36m0. main menu\e[0m")"
    read -p "$(printf "\e[1;33mEnter your choice: \e[0m")" choice
}




while true; do
    # Display the main menu banner
    my_banner
    
    # Display the main menu
    
    # Read user input
    read -p "Enter your choice: " choice
    case $choice in
        1)
            # Call your double_number function
            read -p "Enter a number to double: " num
            double_number "$num"
            main_menu
            ;;
        2)
            # Call other functions or perform other actions
            ;;
        3)
            # Exit the script
            exit
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
