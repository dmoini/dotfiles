# -------------------------------------------------------------------
# Exports
# -------------------------------------------------------------------

export GOPATH="$HOME/code/lib/go"
export GOROOT="/usr/local/opt/go/libexec"
export HOMEBREW_GITHUB_API_TOKEN="25b75a0bc8bd20f6d61a77d59f41b15ef25667a0"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
export MONGO_PATH="/usr/local/mongodb"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$MONGO_PATH/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.7/bin"
export PATH="$PATH:$HOME/code/scripts"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Users/donovanmoini/Library/Python/3.7/bin"

# -------------------------------------------------------------------
# Git Aliases
# -------------------------------------------------------------------

alias ga="git add"
alias gaa="git add -A"
alias gau="git add --update"
alias gb="git branch"
alias gbd="git branch --delete "
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias gcf="git commit --fixup"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gcos="git checkout staging"
alias gcod="git checkout develop"
alias gcpaste="git clone \$(pbpaste)"
alias gd="git diff"
alias gda="git diff HEAD"
alias gfp="git fetch --all && git reset --hard origin/master"
alias gh="gh-home"
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
# Track all remote branches
function gtarb() { for i in `git branch -a | grep remote | grep -v HEAD | grep -v master`; do git branch --track ${i#remotes/origin/} $i; done }
# Delete branch locally and remotely
function gbdlr() {
  git branch --delete $1
  git push origin :$1
}

# -------------------------------------------------------------------
# Python Aliases
# -------------------------------------------------------------------

alias dvenv="deactivate"
alias mvenv="python3 -m venv env"
alias venv="source env/bin/activate"
alias pip_upgrade="pip install --upgrade pip"

# -------------------------------------------------------------------
# Miscellaneous Aliases
# -------------------------------------------------------------------

alias amplify="cd /Users/donovanmoini/code/amplify"
alias c.="code ."
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias fcl="fortune | cowsay | lolcat"
alias GO_PRACTICE="cd /Users/donovanmoini/code/lib/go/src/github.com/dmoini/go-practice"
alias lpass-passclip="lpass show --password -c"
alias mongod="mongod --dbpath /System/Volumes/Data/data/db"
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
alias sbash="source ~/.bash_profile"
alias sp="spotify"
alias szsh="source ~/.zshrc"
alias vbash="vim ~/.bash_profile"
alias visualize="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias vzsh="vim ~/.zshrc"
alias ys="yarn start"

# -------------------------------------------------------------------
# Sourcing Other Files
# -------------------------------------------------------------------

source ~/.bashrc
