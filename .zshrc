# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Conditionally load work-specific configurations
[[ -f "$ZSH/custom/lyftrc" ]] && source $ZSH/custom/lyftrc

# Load modular configuration
[[ -f ~/zsh/exports.zsh ]] && source ~/zsh/exports.zsh || echo "did not found ~/zsh/exports.zsh"
[[ -f ~/zsh/functions.zsh ]] && source ~/zsh/functions.zsh || echo "did not found ~/zsh/functions.zsh"
[[ -f ~/zsh/aliases.zsh ]] && source ~/zsh/aliases.zsh || echo "did not found ~/zsh/aliases.zsh"

# Oh My Zsh plugins
plugins=(sudo macos)

# Initialize Oh My Zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
