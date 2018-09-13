#!/bin/bash

HOME="/home/khang"
for file in _*
do
  cp -R "$file" "$HOME/${file/_/.}";
done
