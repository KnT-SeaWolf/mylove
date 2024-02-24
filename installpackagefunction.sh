#!/bin/bash

# Function to install essential packages
install_essential_packages() {
    echo "\e[0m\e[1;32mInstalling essential packages...\e[0m"
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
        node \
        rust \
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

# Main function
main() {
    install_essential_packages
}

# Execute the main function
main





# Function to install Neovim along with dependencies on Debian-based systems
install_neovim_debian() {
    sudo apt update
    sudo apt install -y neovim \
                        python3-neovim \
                        python3-pip \
                        curl \
                        git \
                        xclip
}



install_neovim_debian() {
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



install_luravim() {
    # Install prerequisites
    sudo apt update
    sudo apt install -y curl git build-essential

    # Install Rust (required for Cargo)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

    # Add Cargo to PATH
    source $HOME/.cargo/env

    # Install Node.js (required for coc.nvim)
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs

    # Install Luravim using Cargo
    cargo install luravim

    # Additional setup steps for Luravim (if any)
    # For example, configuring Luravim in your Neovim configuration
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




