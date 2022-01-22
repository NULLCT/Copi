#!/bin/bash

#     ____            _    #
#    / ___|___  _ __ (_)   #
#   | |   / _ \| '_ \| |   #
#   | |__| (_) | |_) | |   #
#    \____\___/| .__/|_|   #
#              |_|         #
#      Made by NULLCT      #

if type "clip.exe" > /dev/null 2>&1; then
  'cat' | clip.exe
  tr=true
fi

if type "pbcopy" > /dev/null 2>&1; then
  'cat' | pbcopy
  tr=true
fi

if type "xclip" > /dev/null 2>&1; then
  'cat' | xclip -in -sel clip
  tr=true
fi

if "${tr}";then
  return 0
else
  return 1
fi
