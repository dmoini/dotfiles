# -------------------------------------------------------------------
# Paths
# -------------------------------------------------------------------

export AWS_EC2_AMPLIFY_DNS="ec2-user@ec2-18-207-222-13.compute-1.amazonaws.com"
export AWS_EC2_USEAST1_KEYPAIR_PATH="/Users/donovanmoini/.aws/administrator-key-pair-useast1.pem"
export AWS_EC2_USWEST1_KEYPAIR_PATH="/Users/donovanmoini/.aws/administrator-key-pair-uswest1.pem"
export GOPATH=$HOME/code/lib/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-12.0.1.jdk/Contents/Home
export PATH="$PATH:/usr/local/sbin"
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.7/bin"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

# -------------------------------------------------------------------
# Git Aliases
# -------------------------------------------------------------------

alias ga="git add"
alias gaa="git add -A"
alias gau="git add --update"
alias gb="git branch"
alias gbd="git branch --delete "
alias gc="git commit -m"
alias gcf="git commit --fixup"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gcos="git checkout staging"
alias gcod="git checkout develop"
alias gd="git diff"
alias gda="git diff HEAD"
alias gfp="git fetch --all && git reset --hard origin/master"
alias gh="gh-home"
alias gi="git init"
alias gl="git log"
alias glg="git log --graph --oneline --decorate --all"
alias gld="git log --pretty=format:"%h %ad %s" --date=short --all"
alias gm="git merge --no-ff"
alias gma="git merge --abort"
alias gmc="git merge --continue"
alias gmom="git merge origin/master"
alias gp="git pull"
alias gpr="git pull --rebase"
alias gr="git rebase"
alias gs="git status"
alias gss="git status --short"
alias gst="git stash"
alias gsta="git stash apply"
alias gstc="git stash clear"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gsts="git stash save"
alias gu="git push"
alias gub="git push -u origin"

# -------------------------------------------------------------------
# Git Functions
# -------------------------------------------------------------------

# Git log find by commit message
function glf() { git log --all --grep="$1"; }

# -------------------------------------------------------------------
# Class Aliases
# -------------------------------------------------------------------

alias amplify="cd /Users/donovanmoini/code/amplify"
alias CMSI401="cd /Users/donovanmoini/code/lmu/cmsi401-software-engineering-lab"
alias CMSI486="cd /Users/donovanmoini/code/lmu/cmsi486-introduction-to-database-systems"
alias CMSITA="cd /Users/donovanmoini/Desktop/CMSI\ TA"
alias CMSIDS="cd /Users/donovanmoini/Desktop/CMSI\ TA/Data\ Structures"

# -------------------------------------------------------------------
# Python Aliases
# -------------------------------------------------------------------

alias dvenv="deactivate"
alias mvenv="python3 -m venv env"
alias venv="source env/bin/activate"

# -------------------------------------------------------------------
# Script Aliases
# -------------------------------------------------------------------

alias moss="/Users/donovanmoini/code/scripts/moss"
alias update_git_repos="/Users/donovanmoini/code/scripts/update_git_repos"
alias upgrade_everything="/Users/donovanmoini/code/scripts/upgrade_everything"

# -------------------------------------------------------------------
# Miscellaneous Aliases
# -------------------------------------------------------------------

alias cl="clear"
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias minesweeper="/Users/donovanmoini/code/scripts/mine"
alias mongod="mongod --dbpath /System/Volumes/Data/data/db"
alias playroll="cd /Users/donovanmoini/code/lib/go/src/github.com/cazinge/playroll && source services/.env-local"
alias sbash="source ~/.bash_profile"
alias ssh-ec2-amplify="ssh -i $AWS_EC2_USEAST1_KEYPAIR_PATH $AWS_EC2_AMPLIFY_DNS"
alias szsh="source ~/.zshrc"
alias vbash="vim ~/.bash_profile"
alias visualize="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias vzsh="vim ~/.zshrc"
alias ys="yarn start"i

# -------------------------------------------------------------------
# Sourcing Other Files
# -------------------------------------------------------------------

source ~/.bashrc
