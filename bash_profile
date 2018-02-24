#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]; then
    
    export JAVA_HOME=$(/usr/libexec/java_home)
    
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi

    if [ !!$(command -v __git_ps1) ]; then
        export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    fi
fi

export PATH=/usr/local/opt/postgresql@9.4/bin:$PATH

export EDITOR=vim

source ~/.bash_aliases
[ -s ~/.work_profile ] && source ~/.work_profile

export NVM_DIR="/Users/apagan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

ancient-history() {
    month=`date +%Y-%m`
    archive_dir=/Users/apagan/ancient-history/$month
    mkdir -p /Users/apagan/ancient-history/$month
    echo "Moving ${1} to $archive_dir"
    mv "${1}" $archive_dir
}

clean-desktop() {
    for file in ~/Desktop/*; do
        [ -e "$file" ] || continue
        ancient-history "$file"
    done
}

clean-downloads() {
     for file in ~/Downloads/*; do
        [ -e "$file" ] || continue
        ancient-history "$file"
    done
}

g ()
{
    path=$PWD;
    while [ ! -f "${path}/gradlew" ]; do
        if [ "$path" == "/" ]; then
            echo "Couldn't find gradlew - hit / so giving up";
            return 1;
        else
            path=$(dirname $path);
        fi;
    done;
    if [ -f "${path}/gradlew" ]; then
        "${path}/gradlew" "$@";
    fi
}

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

