#!/bin/bash

# TODO: work in progress

# Helper functions
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
        if ! [[ -d $dir ]]; then
            echo -e "$dir is not found\n";
            return 0;
        fi
    done
    return 1
}

isNotFound() {
    if [ "$1" == "-c" ]; then
        if commandNotFound "${@:2}"; then return 0; fi 
    elif [ "$1" == "-d" ]; then
        if directoryNotFound "${@:2}"; then return 0; fi
    else
        echo "Usage for commands: isNotFound -c [command1] [command2]..."
        echo "Usage for directories: isNotFound -d [directory1] [directory2]..."
    fi
    return 1
}

installGitDotfiles() {}

installHomebrewDotfiles() {
    # Install Homebrew if not already installed (https://brew.sh/)
    if isNotFound -c brew; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi

    # TODO: install necessary stuff before running `bundle dump`
}

installNPMDotfiles() {}

installPipDotfiles() {}

installScripts() {}

installShellDotfiles() {}

installVSCodeDotfiles() {}

installVimDotfiles() {}

installOhMyZshDotfiles() {
    # Install Oh My Zsh if not already installed (https://ohmyz.sh/)
    if isNotFound -d $HOME/.oh-my-zsh; then
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi

    # TODO: move OhMyZsh files and custom plugins
}

installDotfiles() {}

installDotfiles
