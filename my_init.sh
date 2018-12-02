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
  openssh-server
  samba
  smbclient
  xdotool
  cowsay
  fortune
  gimp
  calibre
  gthumb
  polarr
  ktorrent
  wallch
  curl
  lm-sensors
  hddtemp
  jq 
  conky
  playonlinux
  steam
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
