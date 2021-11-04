#!/bin/sh

update_xfce(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

update_kde(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

if [ $XDG_CURRENT_DESKTOP == "XFCE" ]
    then
        update_xfce
elif [ $XDG_CURRENT_DESKTOP == "KDE" ]
    then
        update_kde
else
    echo "The desktop environment is not Supported"
fi