#
# ~/.bashrc
#

#Start XOrg server if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
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


# Shopt
bind "set completion-ignore-case on"

set -o noclobber
set -o vi

shopt -s cdspell # autoccorrectrs cd misspellings
shopt -s checkwinsize # check windows size after every command and update values
shopt -s cmdhist # save multi line command as one
shopt -s lithist # add \n to multiline commands
shopt -s direxpand # expand variables when pressing [TAB]
shopt -s dotglob # include dotted files in filename expansion
shopt -s histappend # do not overwrite history
shopt -s histverify # expand history shortcuts before executing
shopt -s expand_aliases

eval "$(starship init bash)"
