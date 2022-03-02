#!/bin/sh

update_xfce(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

update_kde(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
}

if [ $XDG_CURRENT_DESKTOP -eq "XFCE" ]
    then
        update_xfce
elif [ $XDG_CURRENT_DESKTOP -eq "KDE" ]
    then
        update_kde
else
    echo "The desktop environment is not Supported"
fi
