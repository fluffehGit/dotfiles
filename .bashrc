#
# ~/.bashrc
#

#Start XOrg server if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx;
fi

# Sourcing env variables file
if [ -f ~/.bash_env_vars ]; then
    . ~/.bash_env_vars
else
    echo ".bash_env_vars not found at:" $HOME
fi

# Sourcing aliases file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
else
    echo ".bash_aliases not found at:" $HOME
fi

# Sourcing functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
else
    echo ".bash_functions not found at:" $HOME
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Setting up the prompt
#PS1=" \[\033[01;37m\]\w "
#PS1+="\n"
#PS1+=" \e[01;34m\]\\$ "
#PS1+="\e[0m\]"

#PS1="\[\033[01;95m\]\342\224\214\342\224\200\$([ \$? != 0 ] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;95m\]]\342\224\200\")"
#PS1+="["
#PS1+="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root'; else echo '\[\033[0;92m\]\u';fi)"
#PS1+="\[\033[01;94m\]@"
#PS1+="\[\033[01;95m\]\h"
#PS1+="\[\033[0;95m\]]\342\224\200["
#PS1+="\[\033[0;32m\]\w\[\033[0;95m\]]"
#
##if type "vcprompt" >/dev/null; then
##    PS1+="\[\033[0;31m\]\$(vcprompt -f -{%b}%u)"
##    PS1+="\[\033[0;33m\]\$(vcprompt -f %m)"
##fi
#
#PS1+="\n"
#PS1+="\[\033[0;95m\]\342\224\224\342\224\200\342\224\200\342\225\274"
#PS1+="\[\033[01;94m\]\\$ "
#PS1+="\[\033[0m\]"

# Shopt
shopt -s autocd #change to dir name without cd
shopt -s cdspell #autoccorrectrs cd misspellings
shopt -s dotglob #include dotted files in filename expansion
shopt -s cmdhist #save multi line command as one
shopt -s histappend #do not overwrite history
shopt -s expand_aliases
shopt -s checkwinsize #check windows size after every command and update values
bind "set completion-ignore-case on" #ignote upper/lower case whe TAB completion

eval "$(starship init bash)"
