# Sourcing other files
source ~/.aliases
source ~/.exports
source ~/.functions

# Zsh theme
ZSH_THEME="robbyrussell"
ZSH_COLORIZE_STYLE="fruity"

# Uncomment the following line to automatically update oh-my-zsh.
DISABLE_UPDATE_PROMPT=true

# Plugins
plugins=(
  colorize
  you-should-use
  zsh_reload
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
