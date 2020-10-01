#!/bin/bash

# NOTE: WORK IN PROGRESS

LCYAN="\033[0;96m"
NC="\033[0m"

####################
# Helper functions #
####################

bootstrapEcho() {
    echo -e "${LCYAN}Installing $1 and related files and packages...${NC}"
}

commandNotFound() {
    for cmd in "$@"; do
        if ! which "$cmd" &>/dev/null; then
            echo -e "$cmd is not found\n"
            return 0
        fi
    done
    return 1
}

directoryNotFound() {
    for dir in "$@"; do
        if ! [[ -d "$dir" ]]; then
            echo -e "$dir is not found\n"
            return 0
        fi
    done
    return 1
}

isNotFound() {
    if [[ "$1" == "-c" ]]; then
        if commandNotFound "${@:2}"; then return 0; fi 
    elif [[ "$1" == "-d" ]]; then
        if directoryNotFound "${@:2}"; then return 0; fi
    else
        echo "Usage for commands: isNotFound -c [command1] [command2]..."
        echo "Usage for directories: isNotFound -d [directory1] [directory2]..."
    fi
    return 1
}

isRunningBootstrapInDotfilesFolder() {
    if [[ "$PWD" == *dotfiles ]]; then
        return 0
    else
        return 1
    fi
}

#######################
# Bootstrap functions #
#######################

bootstrapGit() {
    bootstrapEcho "Git"
    
    brew install git

    cp git/* "$HOME"
}

bootstrapHomebrew() {
    bootstrapEcho "Homebrew"

    # Install Homebrew if not already installed (https://brew.sh/)
    if isNotFound -c brew; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi

    brew bundle install --file=homebrew/Brewfile
}

# Must be run before bootstrapNPM
bootstrapNode() {
    bootstrapEcho "Node"

    brew install nvm

    node_version_regex="\d{1,2}\.\d{1,2}\.\d{1,2}"
    latest_node_version=$(nvm ls-remote | tail -n1 | grep -Eo $node_version_regex)
    nvm install "$latest_node_version"
    nvm alias default "$latest_node_version"
}

bootstrapNPM() {
    bootstrapEcho "NPM"

    xargs npm i -g < npm/npm-global-packages.txt
}

bootstrapOhMyZsh() {
    bootstrapEcho "Oh My Zsh"

    # Install Oh My Zsh if not already installed (https://ohmyz.sh/)
    if isNotFound -d "$HOME/.oh-my-zsh"; then
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi

    cp oh-my-zsh/.zshrc "$HOME"
    # TODO: move OhMyZsh files and custom plugins
}

bootstrapPip() {
    bootstrapEcho "Python"

    brew install python@3.8

    brew link python@3.8
    xargs pip install -U < pip/pip-global-packages.txt
}

bootstrapScripts() {
    bootstrapEcho "scripts"

    mkdir -p "$HOME/code"
    cp -r scripts "$HOME/code"
}

bootstrapShell() {
    bootstrapEcho "shell files"

    cp shell/* "$HOME"
}

bootstrapVim() {
    bootstrapEcho "Vim"

    cp vim/.vimrc "$HOME"
    cp -r vim/.vim "$HOME"

    echo -e "To complete installation of vim plugins, type :PlugInstall in your vimrc"
}

bootstrapAll() {
    if ! isRunningBootstrapInDotfilesFolder; then
        echo "This file must be sourced in the same directory"
        echo "Usage: cd /path/to/dotfiles && source bootstrap.sh"
        return 1
    fi
    
    bootstrapHomebrew
    # bootstrapOhMyZsh
    bootstrapGit
    bootstrapNode
    bootstrapNPM
    bootstrapPip
    bootstrapScripts
    bootstrapShell
    bootstrapVim
}

bootstrapAll