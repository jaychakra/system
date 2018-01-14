#! /bin/bash

if [ $# -eq 0 ]
  then
    echo "Please provide your email"
fi

git config --global user.name "Jay Chakra"
git config --global user.email  $1
