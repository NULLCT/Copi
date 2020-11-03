#!/bin/bash

#     ____            _    #
#    / ___|___  _ __ (_)   #
#   | |   / _ \| '_ \| |   #
#   | |__| (_) | |_) | |   #
#    \____\___/| .__/|_|   #
#              |_|         #
#      Made by NULLCT      #

if type "pbcopy" > /dev/null 2>&1; then # pbcopy
  'cat' | pbcopy
  echo "Copy by pbcopy"
else
  if type "xclip" > /dev/null 2>&1; then # pbcopy
    'cat' | xclip -in -sel clip
    echo "Copy by xclip"
  else
    echo "Not found command for copy" >&2 # 404
  fi
fi
