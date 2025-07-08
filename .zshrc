# ######## Alias ########
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
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
export PATH=$HOME/.emacs.d/bin:$PATH
export EDITOR='nvim'

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
