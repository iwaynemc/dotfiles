# Alias
alias dotfiles='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias rl='exec zsh'

setopt COMPLETEALIASES

# ######## Homebrew ########
export PATH=/opt/homebrew/bin:$PATH


# ######## Oh-My-Zsh ########
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
zstyle ':omz:update' frequency 5 # frequency of update

plugins=(
  extract
  tmux
  z
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
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

