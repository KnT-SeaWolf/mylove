#!/bin/bash
# Color codes
RED="$(printf '\e[1;31m')"
WHITE="$(printf '\e[1;77m')"
YELLOW="$(printf '\e[1;33m')"
GREEN="$(printf '\e[1;32m')"
STOP="$(printf '\e[0m')"

# Function to display usage instructions
display_help() {
	clear
	echo " "
	echo -e "${GREEN}Usage:${STOP}${RED}    $(basename "$0")${STOP} - [\e[5moptions\e[25m]${STOP}"
	echo " "
	echo -e "${YELLOW}[+] for example${STOP}${GREEN} worldlist.sh -h${STOP} ${WHITE}[${STOP}${RED}\e[5moptions\e[25m${STOP}${WHITE}]${STOP} "
	echo " "
	echo " "
	echo -e "${GREEN}---------------------Options:----------------------${STOP}"
	echo -e "  "
	echo -e "${GREEN}= $(basename "$0")  -h,   ${STOP}${WHITE}--Help${STOP}            ${RED}==${STOP}${YELLOW}Display this help message${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -i,   ${STOP}${WHITE}--Update${STOP}          ${RED}==${STOP}${YELLOW}Update for Your system-repo${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -ic,  ${STOP}${WHITE}--Install${STOP}         ${RED}==${STOP}${YELLOW}Any Check && Install packages${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -zs,  ${STOP}${WHITE}--Oh-my-zsh${STOP}       ${RED}==${STOP}${YELLOW}The Emperor of Counsellor Ohmyzsh${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -lo,  ${STOP}${WHITE}--Lolcat${STOP}          ${RED}==${STOP}${YELLOW}The Angle flower of lolcat${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Gt,  ${STOP}${WHITE}--Gtk-themes${STOP}      ${RED}==${STOP}${YELLOW}Fuck of Poor Ethics Gtk-themes${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Gi,  ${STOP}${WHITE}--Gtk-icons${STOP}       ${RED}==${STOP}${YELLOW}Fuck of Poor Ethics Gtk-icons${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -jpl, ${STOP}${WHITE}--Joplin${STOP}          ${RED}==${STOP}${YELLOW}Memories last forever Joplin${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -sb,  ${STOP}${WHITE}--Sublime-text${STOP}    ${RED}==${STOP}${YELLOW}Keep up of dreaming Sublime-text${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -bst, ${STOP}${WHITE}--Bash-template${STOP}   ${RED}==${STOP}${YELLOW}The Kingdom of Night warrior BashScript${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -ht,  ${STOP}${WHITE}--Html-template${STOP}   ${RED}==${STOP}${YELLOW}The Marathon of NASA Hacker HTML${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -py,  ${STOP}${WHITE}--Python-template${STOP} ${RED}==${STOP}${YELLOW}The Spartacus battle field of Burmese-Python${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -snt, ${STOP}${WHITE}--Snap-setup${STOP}      ${RED}==${STOP}${YELLOW}The Monti Cristo of setup Snap Kitchen${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -pcm, ${STOP}${WHITE}--Pycharm-snap${STOP}    ${RED}==${STOP}${YELLOW}The Woman of Rome the Pycharm-community${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -Vsc, ${STOP}${WHITE}--Vscode-snapt${STOP}    ${RED}==${STOP}${YELLOW}The Scarlet lady of the Vscode-snap${STOP}"
	echo -e "${GREEN}= $(basename "$0")  -jps, ${STOP}${WHITE}--Joplin-desktop${STOP}  ${RED}==${STOP}${YELLOW}The Fall of Paris on the Joplin-desktop${STOP}"

}

display_help



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



# Function to install essential packages
install_essential_packages() {
    echo "Installing essential packages..."
    sudo apt update
    sudo apt install -y \
        git \
        curl \
        build-essential \
        wget \
        unzip \
        zip \
        vim \
        nano \
        tree \
        net-tools \
        software-properties-common \
        apt-transport-https \
        ca-certificates \
        gnupg-agent \
        jq \
        dnsutils \
        make \
        cargo \
        figlet \
        plank \
        npm \
        rsync 
        
    if [ $? -eq 0 ]; then
        echo "Essential packages installed successfully."
    else
        echo "Failed to install essential packages."
    fi
}


install_essential_packages 

