#!/bin/bash
applications="
  vim
  git
  ssh
  yakuake
  cmus
  ibus
  ibus-unikey
  smplayer
  ubuntu-restricted-extras
  samba
  smbclient
  xdotool
  cowsay
  fortune
  wallch
  curl
  lm-sensors
  hddtemp
  jq 
  conky
  synergy
"
for app in $applications
do
    if ! type $app > /dev/null; then
        echo "Installing: "$app
        sudo apt-get install -fy $app
    else
        echo $app" has been installed"
    fi
done
