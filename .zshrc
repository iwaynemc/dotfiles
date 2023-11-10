# ######## Alias ########
alias dotfiles='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotfiles-vsc='GIT_DIR=$HOME/.dotfiles/ GIT_WORK_TREE=$HOME code ~ '
alias rl='exec zsh'
alias nx='source $HOME/nx/bin/activate'

# ######## Options ########
setopt COMPLETEALIASES

# ######## Env Variables ########
# Homebrew 
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/python@3.11/libexec/bin:$PATH
# add nx bin to PATH
export PATH=$HOME/nx/bin:$PATH
# ######## Oh-My-Zsh ########
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export NX_LICENSE_DIR='/Users/myin/'

# ######## Oh-My-Zsh ########
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
bindkey '`' autosuggest-accept # for zsh-autosuggestions

# ######## Pure ########
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=5
zstyle :prompt:pure:git:stash show yes # turn on git stash status
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
prompt pure
