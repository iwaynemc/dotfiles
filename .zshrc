# Alias
alias dotfiles='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

setopt COMPLETEALIASES

# ######## Homebrew ########
export PATH=/opt/homebrew/bin:$PATH


# ######## Oh-My-Zsh ########
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
zstyle ':omz:update' frequency 5 # frequency of update

plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

bindkey '`' autosuggest-accept

source $ZSH/oh-my-zsh.sh


# ######## Pure ########
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/myin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/myin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/myin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/myin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

