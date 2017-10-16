#!/bin/sh
echo Install all AppStore Apps at first!
read -p "This script is for installing essential stuff via brew..
Press any key to continue." -n1 -s
echo  '\n'

# Clear brew if you have brew installed
brew untap caskroom/homebrew-cask
brew untap caskroom/versions
brew untap phinze/homebrew-cask
brew untap homebrew/science
brew uninstall --force brew-cask
brew update; brew cleanup; brew cask cleanup

# Install brew
echo Installing brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/science

# Brew
brew install toilet
brew install figlet
brew install macvim
brew install python
brew install wget
brew install heroku-toolbelt
brew install node
sudo npm install npm -g
npm install -g grunt-cli
npm install -g bower



# Install brew-cask
brew tap phinze/cask
brew install brew-cask
brew tap caskroom/versions
# Brew-Cask-Apps

brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" java
brew cask install --appdir="/Applications" sublime-text3
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" skype
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" flux
brew cask install --appdir="/Applications" skim
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" transmission

echo Linking to alfred

brew cask alfred link

echo Display all installed by brew

brew list

echo Display all installed by brew-cask

brew cask list

echo Cleanup brew!

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
