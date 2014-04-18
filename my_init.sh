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
"
for app in $applications
do
    if ! type $app > /dev/null; then
        echo "Installing: "$app
        sudo apt-get install --force-yes $app
    else
        echo $app" has been installed"
    fi
done

curl -sSL https://get.rvm.io | bash -s stable --ruby
