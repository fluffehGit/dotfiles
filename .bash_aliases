alias ls='/usr/bin/ls --color=auto'
alias grep='/usr/bin/grep --color=auto'

alias cp='/usr/bin/cp -i'
alias mv='/usr/bin/mv -i'
alias rm='/usr/bin/rm -i'
alias rmswap='/usr/bin/rm -i $(/usr/bin/find /home/$USER -name "*.swp")'

alias suspend='/usr/bin/systemctl suspend'
alias open='/usr/bin/xdg-open'

alias gitcfg='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias hc='/usr/bin/herbstclient'

alias ts='tabletDisplay $1'

alias se='/usr/bin/systemctl start $1 && systemd enable $1'

alias rr='/usr/bin/curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

alias kp='keepassxc-cli'
