#!/bin/sh
# Install Xcode!
echo "Install all AppStore Apps at first!"
read -p "This script is for installing essential stuff via brew..
Press any key to continue." -n1 -s
echo  '\n'

# Clear brew if you have brew installed
brew untap caskroom/cask
brew uninstall --force brew-cask
brew update; brew cleanup; brew cask cleanup

# Install brew
echo Installing brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/science

# Brew
brew install macvim
brew install wget
brew install node
brew install yarn

# Install Global packages
sudo npm install -g npm

sudo npm install -g create-react-native-app
sudo npm install -g create-react-app
sudo npm install -g firebase-tools
sudo npm install -g reason-cli
sudo npm install -g flow-typed

# Install brew-cask
brew tap caskroom/cask

##
echo Brew-Cask-Apps
##

# Editors
brew cask install --appdir="~/Applications" visual-studio-code
brew cask install --appdir="~/Applications" atom
brew cask install --appdir="~/Applications" sublime-text

# Media
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" spotify

# Development Tools
brew cask install --appdir="~/Applications" postman

# Social
brew cask install --appdir="~/Applications" skype
brew cask install --appdir="~/Applications" slack

# OS Tools
brew cask install --appdir="~/Applications" flux
brew cask install --appdir="~/Applications" alfred

# Browsers
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" firefox
brew cask install --appdir="~/Applications" brave

# Misc
brew cask install --appdir="~/Applications" dropbox
brew cask install --appdir="~/Applications" evernote

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
