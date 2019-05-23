# source ~/.bashrc

# -------------------------------------------------------------------
# Git Aliases
# -------------------------------------------------------------------

alias ga='git add'
alias gaa='git add -A'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit -m'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gfp='git fetch --all && git reset --hard origin/master'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# -------------------------------------------------------------------
# Git Functions
# -------------------------------------------------------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

# -------------------------------------------------------------------
# Class Aliases
# -------------------------------------------------------------------

alias malmo="cd /Users/donovanmoini/MalmoPlatform/Minecraft && ./launchClient.sh"

# ------------------------------------------------------------------
# Python Aliases
# ------------------------------------------------------------------

alias mvenv="python3 -m venv env"
alias venv="source env/bin/activate"

# -------------------------------------------------------------------
# Miscellaneous Aliases
# -------------------------------------------------------------------

alias vbash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias cl="clear"
alias setAlarm="cd /Users/donovanmoini/Desktop/Stuff && python3 set_alarm.py"
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias playroll="cd /Users/donovanmoini/code/lib/go/src/github.com/cazinge/playroll && source services/.env-local"
alias xcode="open -a Xcode"
alias visualize="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

# -------------------------------------------------------------------
# Paths
# -------------------------------------------------------------------

export MALMO_XSD_PATH=~/MalmoPlatform/Schemas
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home 
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/code/lib/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
