# File exploration
alias ls='/usr/bin/ls --color=auto'
alias grep='/usr/bin/grep --color=auto'

# File manipulation
alias cp='/usr/bin/cp -i'
alias mv='/usr/bin/mv -i'
alias rm='/usr/bin/rm -i'
alias rmswap='/usr/bin/rm -i $(/usr/bin/find /home/$USER -name "*.swp")'

# Sys
alias suspend='/usr/bin/systemctl suspend'
alias open='/usr/bin/xdg-open'

# Git
alias gitcfg='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# WMs
alias hc='/usr/bin/herbstclient'

# Wacom
alias ts='tabletDisplay $1'

# Systemd
alias se='/usr/bin/systemctl start $1 && systemd enable $1'

alias rr='/usr/bin/curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
