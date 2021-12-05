
function tabletDisplay {
    /usr/bin/xsetwacom set "Wacom Intuos Pro S Pen stylus" MapToOutput $1;
    /usr/bin/xsetwacom set "Wacom Intuos Pro S Pen eraser" MapToOutput $1;
    /usr/bin/xsetwacom set "Wacom Intuos Pro S Pen cursor" MapToOutput $1;
}

# vim: filetype=sh
