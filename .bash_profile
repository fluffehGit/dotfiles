#
# ~/.bash_profile
#

#Start XOrg server if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx;
fi

setleds -D +num

#Load .bashrc file
[[ -f ~/.bashrc ]] && . ~/.bashrc
