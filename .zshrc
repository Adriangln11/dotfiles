# Prompt de Starship
eval "$(starship init zsh)"

# Autocompletado y resaltado de sintaxis
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Colores y configuración básica
autoload -U colors && colors
setopt prompt_subst


ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=white'
# echo, cd, pwd...
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan, bold'
# PATH executables
ZSH_HIGHLIGHT_STYLES[command]='fg=blue, bold'
# Path file/directory
ZSH_HIGHLIGHT_STYLES[path]='fg=white,italic'
# if, sudo...
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=red,bold'
# hyphen options
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=yellow,bold'
# args 
ZSH_HIGHLIGHT_STYLES[arg0]='fg=white'
ZSH_HIGHLIGHT_STYLES[comment]='fg=yellow'

# pnpm
export PNPM_HOME="/home/adriangln11/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/home/adriangln11/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
