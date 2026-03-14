# =========================================================================
# Auto-start or attach to tmux session 'dev'
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  # Check if session 'dev' exists
  tmux has-session -t dev 2>/dev/null
  
  if [ $? != 0 ]; then
    # Session doesn't exist, create it
    tmux new-session -s dev
  else
    # Session exists, attach to it
    tmux attach-session -t dev
  fi
fi
# =========================================================================
# ######## Alias ########
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotfiles-vsc='GIT_DIR=$HOME/.dotfiles/ GIT_WORK_TREE=$HOME code ~ '
alias rl='exec zsh'
alias nx='source $HOME/nx/bin/activate'
alias ls='ls --color=auto -CFGhp'

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"

# bun completions
[ -s "/home/myin/.bun/_bun" ] && source "/home/myin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
