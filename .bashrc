source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\w\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

GIT_PS1_SHOWUPSTREAM=true
GIT_PS1_SHOWDIRTYSTATE=true

# export PS1='\w\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\[\e[1;36m\]`if [[ -n $CLOUDSDK_ACTIVE_CONFIG_NAME ]]; then echo [gcp: ${CLOUDSDK_ACTIVE_CONFIG_NAME}]; fi`\[\e[m\]\n\$ '

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=30000
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL='ignoreboth'

eval "$(direnv hook bash)"
export EDITOR=vim
