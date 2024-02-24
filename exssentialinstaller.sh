#!/bin/bash

RED="$(printf '\e[1;31m')"
YELLOW="$(printf '\e[1;33m')"
GREEN="$(printf '\e[1;32m')"
STOP="$(printf '\e[0m')"




finished=0

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
	printf "\e[0m\n"
	

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


my_succeResult() {

	read -p "${GREEN}Enter your choice install package-> ${STOP}" ur_packe
	logfile=./$ur_packe
	errolog=./$ur_packe

	if which "$ur_packe" >/dev/null 2>&1; then
		echo "${GREEN}The package $ur_packe is already installed on your system.${STOP}"
		sleep 3
	else

		echo "${YELLOW}Installing your $ur_packe now .......${STOP}"
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

	logfile=./updatefile
	errolog=./errorlogfile
	printf "\e[0m\e[1;33mUpdating your System-OS\e[0m\n"

	sudo apt update -y 1>>$logfile 2>>$errolog

	if [ $? -eq 0 ]; then
		printf "\e[0m\e[0;32Ohmy god Successful,Please check the $logfile file\e[0m"
		sleep 4
	else
		echo "your install error occurent,Please check the $errolog file."
		sleep 4
	fi
}



my_bashfun() {

			#user create for program filename extention 
			read -p "Please provide you want to create BashScript lesson filename:" filename1
			
			mkdir -p ./programming/BashScript
			#user filename of the program Path 
			ur_filpath="./programming/BashScript/$filename1.sh"

			#user choice of template for program lesson and exceice 
			cat <<- EOF > "$ur_filpath"
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

			user choice of template for program lesson and exceice 
			cat <<- EOF > "$u_filepat"
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


			cat <<- EOF > "$ure_fpat"
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



while [[ $finished -ne 1 ]]; do
	clear
	menu_point
	my_banner
	read -p "${YELLOW}[${STOP}${RED}$USER${STOP}${YELLOW}]${STOP}-${YELLOW}Select an option:${STOP}"  ur_choice
	case $ur_choice in
		1 )
		my_updatefun
		;;

		2 )
		my_succeResult
		;;

		3 )
		install_ohmyzsh
		;;

		4 )
		my_beautifulcolor
		;;

		5 )
		my_whiteSurthemes
		;;

		6)
		my_whiteSuricon
		;;

		7 )
		my_joplingit
		;;

		8 )
		my_sublimetxt
		;;

		9 )
		my_bashfun
		;;

		10 )
		my_htfun
		;;

		11 )
		my_pyfun
		;;

		12 )
		my_snapd
		;;

		13 )
		my_snapycharm
		;;

		14 )
		my_snapcode
		;;

		15 )	
		my_snapjoplin
		;;


		"e" | "exit" | 00 | 0 )

		echo "   ${YELLOW}Do what is crazy , but not stupid !! ....Thank you for using Script.${STOP}"
		sleep 3 
		finished=1
		clear  
		;;

		* )
		echo " "
		echo "          ${RED}hey guy something worng !!!....${STOP}"
		sleep 3
		;;
	esac
done