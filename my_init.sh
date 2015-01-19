#!/bin/bash
applications="
  vim
  git
  yakuake
  cowsay
  fortune
  ibus
  ibus-unikey
  curl
  wallch
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

curl -sSL https://get.rvm.io | bash -s stable --ruby
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
