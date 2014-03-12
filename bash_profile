#/bin/bash

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

export PATH=/home/apagan/install/bin:$PATH

export EDITOR=vim

source ~/.bash_aliases
