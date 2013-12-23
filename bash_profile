#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

export PATH=/home/apagan/install/bin:$PATH
export EDITOR=vim

source ~/.bash_aliases
