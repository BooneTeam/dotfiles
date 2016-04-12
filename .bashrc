#### This file should be linked to a file in your Dotfiles so that
#### when this changes you can update your repo without mv or cp or whatever

#############################################
# GIT completions & highlighted prompt
#############################################
if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[36m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

###############################
#Iterm CWD as Tab Titles
###############################
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

#############################################
# Bash ls colors
#############################################
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
## GIT ALIASES 
alias g='git status'
alias gg='git log'
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gce="git commit --amend" # fix last commit message
alias gco='git checkout'
alias gd='git diff | bbedit'
alias gdm='git diff master'
alias gl='git pull'
alias gp='git push'

#############################################
# CD ALIASES
#############################################
alias ls='ls -a'
alias ll='ls -l'
alias la='ls -la'
alias     ..="cd .."
alias    ...="cd ../.."
alias   ....="cd ../../.."
alias  .....="cd ../../../.."
alias ......="cd ../../../../.."

# START AND STOP THINGS ALIASES #
#################################
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'


# Commands For Le Terminal Things
################################
alias br='. ~/.bashrc'

### Application alias type things#####

#open Mou md editor ie: mou <filename>
alias mou="open /opt/homebrew-cask/Caskroom/mou/0.8.7/Mou.app"

# override cd b/c I always want to list dirs after I cd
# note that this won't work with rvm b/c it overrides cd.
cd() {
  builtin cd "$@"
  ls
}

# configure git
git config --global color.ui true
git config --global core.editor subl
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto

# Set a global gitignore for things like .idea and .DS_Store
git config --global core.excludesfile '~/.dotfiles/.global_gitignore'

#############################################
# update path for mysql and pear
#############################################
export PATH=/usr/local/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH

### RBENV

eval "$(rbenv init -)"



export NVM_DIR="/Users/garrettboone/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
