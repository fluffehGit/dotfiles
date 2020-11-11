#File exploration
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#File manipulation
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rmswap='rm -i $(find /home/$USER -name "*.swp")'

#Sys
alias sleep='systemctl suspend'

#Git
alias gitcfg='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

#WMs
alias hc='herbstclient'

#Wacom
alias ts='tabletDisplay $1'

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
