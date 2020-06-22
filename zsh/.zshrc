# Sourcing other files
source ~/.exports
source ~/.aliases
source ~/.functions
source ~/.localrc

# Zsh theme
ZSH_THEME="robbyrussell"
ZSH_COLORIZE_STYLE="fruity"

# Uncomment the following line to automatically update oh-my-zsh.
DISABLE_UPDATE_PROMPT=true

# Plugins
plugins=(
  colorize
  you-should-use
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Zplugins
source $ZSH/oh-my-zsh.sh

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# thefuck
eval $(thefuck --alias)
