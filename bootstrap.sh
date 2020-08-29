#!/bin/bash

# NOTE: WORK IN PROGRESS

##### Start of helper functions #####

commandNotFound() {
    for cmd in "$@"; do
        if ! which $cmd &>/dev/null; then
            echo -e "$cmd is not found\n"
            return 0
        fi
    done
    return 1
}

directoryNotFound() {
    for dir in "$@"; do
        if ! [[ -d $dir ]]; then
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
    if [[ $PWD == *dotfiles ]]; then
        return 0
    else
        return 1
    fi
}

##### End of helper functions #####

bootstrapOhMyZsh() {
    # Install Oh My Zsh if not already installed (https://ohmyz.sh/)
    if isNotFound -d $HOME/.oh-my-zsh; then
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi

    cp oh-my-zsh/.zshrc $HOME
    # TODO: move OhMyZsh files and custom plugins
}

bootstrapHomebrew() {
    # Install Homebrew if not already installed (https://brew.sh/)
    if isNotFound -c brew; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi

    # TODO: install necessary stuff before running `brew bundle dump` (mas login)
    brew bundle install --file=homebrew/Brewfile
}

bootstrapGit() {
    cp -r git/ $HOME
}

bootstrapNPM() {
    # TODO: check that latest Node is installed
    # If not, save name of npm packages, upgrade node, install latest npm for new node version, reassign nvm default alias, uninstall npm packages from old node version, and uninstall old node version
    cat npm/npm-global-packages.txt | xargs npm i -g
}

bootstrapPip() {
    brew link python@3.8
    cat pip/pip-global-packages.txt | xargs pip install -U
}

bootstrapScripts() {
    if isNotFound -d $HOME/code/scripts; then
        mkdir -p $HOME/code/scripts
    fi

    cp -r scripts/ $HOME/code/scripts
}

bootstrapShell() {
    cp shell/{.aliases,.exports,.functions} $HOME
}

bootstrapVSCode() {
    VSCODE_DIR="$HOME/Library/Application Support/Code/User"
    # TODO
}

bootstrapVim() {
    cp vim/.vimrc $HOME
    # TODO
}

# TODO: delete testFunction and remove testFunction from bootstrapAll
testFunction() {
    DIR="$(cd "$(dirname "$0")" && pwd)"
    echo $DIR
}

bootstrapAll() {
    if ! isRunningBootstrapInDotfilesFolder; then
        echo "This file must be sourced in the same directory"
        echo "Usage: cd /path/to/dotfiles && source bootstrap.sh"
        return 1
    fi
    # bootstrapOhMyZsh
    # bootstrapHomebrew
    bootstrapGit
    bootstrapNPM
    bootstrapPip
    bootstrapScripts
    bootstrapShell
    # bootstrapVim
    # bootstrapVSCode
    testFunction
}

bootstrapAll
