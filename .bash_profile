#############################################
# GIT completions & highlighted prompt
#############################################
if [ -f /usr/local/etc/bash_completion ]; then
 . /usr/local/etc/bash_completion
fi
GIT_PS1_SHOWDIRTYSTATE=true

# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[36m\]\w\[\033[31m\]\[\033[00m\]$ '
#############################################
# Bash ls colors
#############################################
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

#############################################
# ALIASES
#############################################
alias ls='ls -a'
alias ll='ls -l'
alias la='ls -la'
alias     ..="cd .."
alias    ...="cd ../.."
alias   ....="cd ../../.."
alias  .....="cd ../../../.."
alias ......="cd ../../../../.."

# override cd b/c I always want to list dirs after I cd
# note that this won't work with rvm b/c it overrides cd.
cd() {
  builtin cd "$@"
  ls
}

########
## git
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


# PROMPT
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }
# \[\033[36m\]\w\[\033[31m\]\[\033[00m\]$
  function prompt_segment {
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-37};36m\]${1}\[\033[0m\]"
    fi
  }

  function build_le_prompt {
    # time
    ps1="$(prompt_segment " \@ ")"

    # cwd with coloured current directory
    # path="$(dirname `pwd`)"
    # dir="$(basename `pwd`)"
    # ps1="${ps1} $(prompt_segment " ${path}/")$(prompt_segment "$dir " 34)"

    # cwd
    ps1="${ps1} $(prompt_segment " \w ")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]; then ps1="${ps1} $(prompt_segment " $git_branch " 32)"; fi

    # next line
    ps1="${ps1}\n\$ "

    # output
    PS1="$ps1"
  }

  PROMPT_COMMAND='build_le_prompt'
###Thanks JOSH CHEEKS###
