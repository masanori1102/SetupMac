#!/bin/sh

# This script is for installing the applications written in .

echo "1. Install Homebrew"
# "http://brew.sh/"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ; echo

echo "2. Install Homebrew Cask"
# "https://caskroom.github.io/"
brew tap caskroom/cask ; echo

if [ $? -ne 0 ] ; then
    exit
fi

echo "3. Install applications with Homebrew Cask"
cwd=`dirname "${0}"`
cat ${cwd}/app.list | while read line
do
  if [ -z "${line}" ]; then
    continue
  fi

  if `echo ${line} | grep -q "#"` ; then
    continue
  fi

  echo ${line}
  brew cask install ${line}
done

# Remove Brew's cache
brew cleanup -s

echo "===== END ===="
