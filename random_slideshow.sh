#! /bin/bash

#######################################################
## Recursive Random Slideshow with Feh in Ubuntu ##
#######################################################
# This uses feh
# Avaliable in the repositories (graphics universe)
# To display images "non-randomly" change line 21
# ' -zsrZFD ' to ' -srZFD '
# See ' man feh ' for all the options
# Don't forget to make this file executable:
# chmod +x .filename

location=`zenity --file-selection --directory --title="Choose your picture folder"`
timer=`zenity --entry --title="Slideshow options" --text="Seconds between images" --entry-text "10"`
 
if [ $timer -eq ""]; then
exit 1
fi
 
echo "$location"
feh -zsrZFD $timer "$location"
