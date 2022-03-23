#!/bin/bash

update_xfce(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt remove codium -y
    sudo apt remove libreoffice-* -y
}

update_kde(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt remove codium -y
    sudo apt remove libreoffice-* -y
}

clean(){
    sudo apt autoremove -y
}

if [[ $XDG_CURRENT_DESKTOP == "XFCE" ]]
    then
        update_xfce
        clean
elif [[ $XDG_CURRENT_DESKTOP == "KDE" ]]
    then
        update_kde
        clean
else
    echo "The desktop environment is not Supported"
fi
