#!/bin/bash

# GitHub repository URL
REPO_URL="https://github.com/your-username/your-repo.git"

# Directory where your lesson files are located
LESSON_FILES_DIR="/path/to/your/lesson/files"

# Function to clone the repository if not already cloned
clone_repository() {
    if [ ! -d "your-repo" ]; then
        echo "Cloning the GitHub repository..."
        git clone "$REPO_URL"
    fi
}

# Function to add, commit, and push changes to GitHub
push_to_github() {
    echo "Adding changes..."
    cd your-repo || exit
    cp -r "$LESSON_FILES_DIR"/* .
    git add .
    git commit -m "Update lesson files"
    echo "Pushing changes to GitHub..."
    git push origin main  # Assuming the default branch is 'main'
}

# Main function
main() {
    clone_repository
    push_to_github
}

# Execute the main function
main
