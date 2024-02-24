#!/bin/bash

#color codes

RED="$(printf '\e[1;31m')"
YELLOW="$(printf '\e[1;33m')"
WHITE="$(printf '\e[1;77m')"
GREEN="$(printf '\e[1;32m')"
STOP="$(printf '\e[0m')"

menu_point() {

	printf "			\e[0m\n"
	printf "			\e[0m\e[1;92m _ _  __     \e[0m\e[1;31m _ \e[0m\e[1;92m    _                                           \e[0m\n"
	printf "			\e[0m\e[1;92m| (_)/ _| ___\e[0m\e[1;31m(_)\e[0m\e[1;92m___| | _____   _____                            \e[0m\n"
	printf "			\e[0m\e[1;92m| | | |_ / _ \e[0m\e[1;31m\ /\e[0m\e[1;92m __| |/ _ \ \ / / _ \                           \e[0m\n"
	printf "			\e[0m\e[1;92m| | |  _|  __\e[0m\e[1;31m/ \ \e[0m\e[1;92m__\ | (_) \ V /  __/                           \e[0m\n"
	printf "			\e[0m\e[1;92m|_|_|_|  \___\e[0m\e[1;31m|_|\e[0m\e[1;92m___/_|\___/ \_/ \___|                           \e[0m\n"
	printf "			\e[0m\e[5m\e[1;93m💞  welcom to my Script-cut world. 💞\e[25m\e[0m\n"
	printf "		\e[0m\e[1m\e[1;96m<<+>>Create By\e[0m\e[1;33m Kyaw Nyein Thant\e[0m-\e[1;37mDate,Feb,14,2024.\e[0m\e[1;96m<<+>>\e[0m\n"
	printf "			\e[0m\n"

}

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

# Function to display usage instructions
display_help() {
	clear
	echo " "
	echo -e "${GREEN}Usage:${STOP}${RED}    $(basename "$0")${STOP} - [\e[5moptions\e[25m]${STOP}"
	echo " "
	echo -e "${YELLOW}[+] for example${STOP}${GREEN} $(basename "$0") -h${STOP} ${WHITE}[${STOP}${RED}\e[5moptions\e[25m${STOP}${WHITE}]${STOP} "
	echo " "
	echo " "
	echo -e "${GREEN}---------------------Options:----------------------${STOP}"
	echo -e "  "
	echo -e "${GREEN}= $(basename "$0")  -h,   ${STOP}${WHITE}--Help${STOP}            ${RED}==${STOP}${YELLOW}Display this help message${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -up,  ${STOP}${WHITE}--Update${STOP}          ${RED}==${STOP}${YELLOW}Update for Your system-repo${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -ic,  ${STOP}${WHITE}--Install${STOP}         ${RED}==${STOP}${YELLOW}Any Check && Install packages${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -zs,  ${STOP}${WHITE}--Oh-my-zsh${STOP}       ${RED}==${STOP}${YELLOW}The Emperor of Counsellor Ohmyzsh${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -lo,  ${STOP}${WHITE}--Lolcat${STOP}          ${RED}==${STOP}${YELLOW}The Angle flower of lolcat${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Gt,  ${STOP}${WHITE}--Gtk-themes${STOP}      ${RED}==${STOP}${YELLOW}Fuck of Poor Ethics Gtk-themes${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Gi,  ${STOP}${WHITE}--Gtk-icons${STOP}       ${RED}==${STOP}${YELLOW}Fuck of Poor Ethics Gtk-icons${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -jpl, ${STOP}${WHITE}--Joplin${STOP}          ${RED}==${STOP}${YELLOW}Memories last forever Joplin${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -sb,  ${STOP}${WHITE}--Sublime-text${STOP}    ${RED}==${STOP}${YELLOW}Keep up of dreaming Sublime-text${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -bst, ${STOP}${WHITE}--Bash-template${STOP}   ${RED}==${STOP}${YELLOW}The Kingdom of Night warrior BashScript${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -hlt, ${STOP}${WHITE}--Html-template${STOP}   ${RED}==${STOP}${YELLOW}The Marathon of NASA Hacker HTML${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -pyt, ${STOP}${WHITE}--Python-template${STOP} ${RED}==${STOP}${YELLOW}The Spartacus battle field of Burmese-Python${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -snt, ${STOP}${WHITE}--Snap-setup${STOP}      ${RED}==${STOP}${YELLOW}The Monti Cristo of setup Snap Kitchen${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -pcm, ${STOP}${WHITE}--Pycharm-snap${STOP}    ${RED}==${STOP}${YELLOW}The Woman of Rome the Pycharm-community${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Vsc, ${STOP}${WHITE}--Vscode-snapt${STOP}    ${RED}==${STOP}${YELLOW}The Scarlet lady of the Vscode-snap${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -jpd, ${STOP}${WHITE}--Joplin-desktop${STOP}  ${RED}==${STOP}${YELLOW}The Fall of Paris on the Joplin-desktop${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -g,   ${STOP}${WHITE}--generate${STOP}        ${RED}==${STOP}${YELLOW}Gnerate Password Worldlist${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -a,   ${STOP}${WHITE}--append${STOP}          ${RED}==${STOP}${YELLOW}Anywhere text to a file${STOP}"
	sleep 8
}

my_snapd() {

	sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup -y
	sudo apt update -y
	sudo apt install snapd -y

}

my_snapycharm() {

	sudo snap install pycharm-community --classic

}

my_snapcode() {
	sudo snap install code --classic -y
}

my_snapjoplin() {
	sudo snap install joplin-desktop -y
}

install_ohmyzsh() {
	read -p "Do you want to install Oh My Zsh? (y/n): " answer
	if [[ $answer =~ ^[Yy]$ ]]; then
		# Install Oh My Zsh
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

		# Install plugins
		git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
		git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
		git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

		# Set up Oh My Zsh plugins
		sed -i '/^plugins=/ s/)$/ zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/' ~/.zshrc
	else
		echo "Oh My Zsh installation cancelled."
	fi
}

my_beautifulcolor() {

	git clone https://github.com/xero/figlet-fonts.git

	sudo apt update && upgrade -y
	sudo apt install ruby -y
	sudo apt install gem -y
	sudo apt install wget -y

	wget https://github.com/busyloop/lolcat/archive/master.zip
	unzip master.zip
	rm master.zip
	cd ./lolcat-master/bin
	sudo gem install lolcat -y

	figlet Thanks | lolcat
}

my_sublimetxt() {

	git clone https://github.com/TCattd/sublime-text-linux-installer.git
	#cd directory
	cd sublime-text-linux-installer
	#this is permission
	sudo chmod +x ./stinstall && sudo ./stinstall

}

my_whiteSurthemes() {
	git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
	cd WhiteSur-gtk-theme
	sudo chmod +x ./*
	sudo ./install.sh

}

my_whiteSuricon() {
	git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
	cd WhiteSur-icon-theme
	sudo chmod +x ./*
	sudo ./install.sh
}

my_joplingit() {
	git clone https://github.com/laurent22/joplin.git
	cd joplin
	sudo ./Joplin_install_and_update.sh

}

install_neovim_debian() {
	echo " Installing neovim Version 10 for your System-OS ...."
	sudo apt update
	sudo apt install -y neovim \
		python3-neovim \
		python3-pip \
		neovim software-properties-common \
		ninja-build gettext libtool libtool-bin \
		autoconf automake cmake g++ pkg-config unzip

	# Clone Neovim repository
	git clone https://github.com/neovim/neovim.git

	# Change directory to neovim
	cd neovim

	# Build Neovim
	make CMAKE_BUILD_TYPE=Release

	# Install Neovim
	sudo make install
}

my_succeResult() {

	read -p "${GREEN}Enter your choice install package-> ${STOP}" ur_packe
	logfile=./$ur_packe
	errolog=./$ur_packe

	if which "$ur_packe" >/dev/null 2>&1; then
		echo "${GREEN}The package $ur_packe is already installed on your system.${STOP}"
		sleep 3
	else

		echo "${YELLOW}Installing your now .......${STOP}"
		sudo apt install $ur_packe -y 1>>$logfile 2>>$errolog

		if [ $? -eq 0 ]; then
			echo "${GREEN}Successful your install ,Please check the  $logfile file."
			sleep 3
		else
			echo "${RED}An error occurent,Please check the $errolog file."
			sleep 3
		fi
	fi
}

my_updatefun() {
	# Define log file paths
	logfile=./updatefile
	errorlog=./errorlogfile

	# Print informative message
	printf "\e[0m\e[1;33mUpdating your system...\e[0m\n"

	# Perform system update and log output/errors
	sudo apt update -y >$logfile 2>$errorlog

	# Check if update was successful
	if [ $? -eq 0 ]; then
		# Print success message
		printf "\e[0m\e[1;32mSystem update successful. Check %s for details.\e[0m\n" "$logfile"
		sleep 3
	else
		# Print error message
		printf "\e[0m\e[1;31mError: System update failed. Check %s for errors.\e[0m\n" "$errorlog"
		sleep 3
	fi
}

my_bashfun() {

	#user create for program filename extention
	read -p "Please provide you want to create BashScript lesson filename:" filename1

	mkdir -p ./programming/BashScript
	#user filename of the program Path
	ur_filpath="./programming/BashScript/$filename1.sh"

	#user choice of template for program lesson and exceice
	cat <<-EOF >"$ur_filpath"
		#!/bin/bash
		#Script      : $filename1.sh 
		#Author      : KnT
		#Version     : 1.0.0
		#Create      : $(date +%a-%b-%d-%Y==%T-%p)s
		###################################
		#         Beginnig of the Code     






















		####################################
		#          End of the Code 


	EOF
	subl "$ur_filpath"

}

my_htfun() {

	read -p "Please provide you want to create Html lesson filename:" my_htmlt

	#user progarm file path
	mkdir -p ./programming/HTML
	u_filepat="./programming/HTML/$my_htmlt.html"

	#user choice of template for program lesson and exceice
	cat <<-EOF >"$u_filepat"
		#Script     : $my_htmlt.html
		#Author     : KnT
		#Version    : 1.0.0
		#Create     : $(date +%A-%B-%d-%Y)
		#
		##########################################################
		#            Beginnig of the Code














		##########################################################
			      #               End of the Code 

	EOF

	subl $u_filepat
}

my_pyfun() {

	read -p "${GREEN}Please provide you want to create Python lesson filename:" my_pyth

	#user file path
	mkdir -p ./programming/Python
	ure_fpat="./programming/Python/$my_pyth.py"

	#user choice of template for program lesson and exceice

	cat <<-EOF >"$ure_fpat"
		#Script  : $my_pyth.py
		#Author  : KnT
		#Version : 1.0.0
		#Create  : $(date +%A-%B-%d-%Y)


		######################################################
			         #              Beginnig of the Code 




















		######################################################
		#             End of the Code 


	EOF
	# AutoOpen sublime-text
	subl $ure_fpat

}

# Function to append user input to a specified file
append_to_file() {
	read -p "$(printf "\e[1;33mEnter text to append: \e[0m")" user_input
	read -p "$(printf "\e[1;33mEnter the file path to append to: \e[0m")" file_path
	echo "$user_input" >>"$file_path"
	echo "$(printf "\e[1;32mText '$user_input' appended to file: $file_path\e[0m")"
	sleep 4
}

# Function to generate password wordlist
generate_wordlist() {
	read -p "$(printf "\e[1;33mEnter base word for wordlist: \e[0m")" base_word
	read -p "$(printf "\e[1;33mEnter maximum number of digits to append: \e[0m")" max_digits

	echo "$(printf "\e[1;36mGenerating wordlist...\e[0m")"

	measure_loading_time
	total_passwords=0

	for ((i = 1; i <= $max_digits; i++)); do
		for j in {0..9}; do
			echo "${base_word}${j}" >>wordlist.txt
			echo "${j}${base_word}" >>wordlist.txt
			echo "${j}${base_word}${j}" >>wordlist.txt
			echo "${base_word}${j}${base_word}" >>wordlist.txt
			echo "${base_word}${j}${base_word}${j}" >>wordlist.txt
			echo "${j}${base_word}${j}${base_word}" >>wordlist.txt
			total_passwords=$((total_passwords + 6))

		done
	done

	echo "$(printf "\e[1;32mWordlist generated successfully: wordlist.txt\e[0m")"
	echo "$(printf "\e[1;32mTotal number of passwords generated: $total_passwords\e[0m")"
	sleep 5
}

# Function to measure loading time
measure_loading_time() {
	echo "Script loading started..."
	SECONDS=0 # Start the timer
}

# Function to display loading time
display_loading_time() {
	duration=$SECONDS # Get the duration
	echo "Script loading completed in $duration seconds."
	sleep 4
}

# Main function
main() {
	# Parse command-line options
	while [[ $# -gt 0 ]]; do
		case "$1" in
		-h | --help)
			display_help
			help_menu
			exit 0
			;;
		-up | --update)
			my_updatefun
			exit 0
			;;
		-ic | --install)
			my_succeResult
			exit 0
			;;
		-zs | --ohmyzsh)
			install_ohmyzsh
			exit 0
			;;
		-lo | --lolcat)
			my_beautifulcolor
			exit 0
			;;
		-Gt | --gtkthemes)
			my_whiteSurthemes
			exit 0
			;;
		-Gi | --gtkicons)
			my_whiteSuricon
			exit 0
			;;
		-jpl | --joplin)
			my_joplingit
			exit 0
			;;
		-sb | --sublimes)
			my_sublimetxt
			exit 0
			;;
		-bst | --bashtemp)
			my_bashfun
			exit 0
			;;
		-hlt | --htmltemp)
			my_htfun
			exit 0
			;;
		-pyt | --pythontemp)
			my_pyfun
			exit 0
			;;
		-snt | --snapset)
			my_snapd
			exit 0
			;;
		-pcm | --pychinst)
			my_snapycharm
			exit 0
			;;
		-Vsc | --vcodesnp)
			my_snapcode
			exit 0
			;;
		-jpd | --joplind)
			my_snapjoplin
			exit 0
			;;
		-a | --append)
			append_to_file
			exit 0
			;;

		-g | --generate)
			generate_wordlist
			exit 0
			;;

		-ne | --neovimint)
			install_neovim_debian
			exit 0
			;;

		*)
			#echo "Invalid option: $1"
			echo "          ${RED}Oops! Something went wrong. Please select a valid option.${STOP}"
			exit 1
			;;
		esac
		shift
	done
}

# Execute the main function
main "$@"

main_menu() {
	while true; do
		clear
		menu_point
		my_banner
		read -rp "${YELLOW}[${STOP}${RED}$USER${STOP}${YELLOW}]${STOP}-${YELLOW}Select an option:${STOP} " ur_choice

		case $ur_choice in
		1)
			my_updatefun
			;;
		2)
			my_succeResult
			;;
		3)
			install_ohmyzsh
			;;
		4)
			my_beautifulcolor
			;;
		5)
			my_whiteSurthemes
			;;
		6)
			my_whiteSuricon
			;;
		7)
			my_joplingit
			;;
		8)
			my_sublimetxt
			;;
		9)
			my_bashfun
			exit 0
			;;
		10)
			my_htfun
			exit 0
			;;
		11)
			my_pyfun
			exit 0
			;;
		12)
			my_snapd
			;;
		13)
			my_snapycharm
			;;
		14)
			my_snapcode
			;;
		15)
			my_snapjoplin
			;;

		16)
			append_to_file
			;;

		17)
			generate_wordlist
			display_loading_time
			;;

		18)
			install_neovim_debian
			;;

		h)
			display_help
			help_menu
			;;
		e | exit | 0)
			echo "   ${YELLOW}Do something crazy, but not stupid! Thank you for using the script.${STOP}"
			sleep 3
			clear
			return 0
			;;
		*)
			echo " "
			echo "          ${RED}Oops! Something went wrong. Please select a valid option.${STOP}"
			sleep 3
			;;
		esac
	done
}

main_menu
