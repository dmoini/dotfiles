# Sourcing other files
source ~/.exports
source ~/.functions
source ~/.aliases
source ~/.localrc

# Zsh theme
ZSH_THEME="robbyrussell"
ZSH_COLORIZE_STYLE="fruity"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Plugins
plugins=(
  colorize
  you-should-use
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Custom configurations

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# thefuck
eval $(thefuck --alias)
