#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]; then
    
    export JAVA_HOME=$(/usr/libexec/java_home)
    
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi

    if [ -f ~/.maven_bash_completion.bash ]; then
        . ~/.maven_bash_completion.bash
    fi

    export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
fi

export PATH=/usr/local/opt/postgresql@9.4/bin:$PATH

export EDITOR=vim

source ~/.bash_aliases
[ -s "./work_profile" ] && . ".work_profile"

export NVM_DIR="/Users/apagan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

