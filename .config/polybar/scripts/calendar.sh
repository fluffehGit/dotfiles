#!/bin/bash
#
#

#Check if calcurse is installed
if type "calcurse"; then

    #Terminate all running instances of calcurse
    killall -q calcurse

    #Waite until processes are shut down
    while pgrep -u $UID -x calcurse >/dev/null; do

        sleep 1;

    done

    alacritty --hold --command calcurse;

else
    alacritty --hold --command echo "Please install calcurse!";
fi

