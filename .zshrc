# Alias
alias dotfiles='/opt/homebrew/bin/git 
--git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias rl='exec zsh'
alias nx='source $HOME/nx/bin/activate'

export EDITOR='nvim'

setopt COMPLETEALIASES

# ######## Homebrew ########
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/python@3.11/libexec/bin:$PATH

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

source $ZSH/oh-my-zsh.sh
bindkey '`' autosuggest-accept

# ######## Pure ########
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=5
# turn on git stash status
zstyle :prompt:pure:git:stash show yes
prompt pure
