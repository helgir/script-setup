#!/bin/sh
echo Install all AppStore Apps at first!
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Clear brew
brew untap caskroom/homebrew-cask
brew untap phinze/homebrew-cask
brew untap homebrew/science
brew uninstall --force brew-cask
brew update; brew cleanup; brew cask cleanup

# Install brew
echo Installing brew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebro)"

brew tap homebrew/science

# Brew
brew install toilet
brew install figlet
brew install python
brew install node --without-npm
curl -L https://npmjs.org/install.sh | sh
npm install -g grunt-cli
npm install -g bower



# Install brew-cask
brew tap phinze/cask
brew install brew-cask
# Brew-Cask-Apps

brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" java
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" skype
brew cask install --appdir="~/Applications" spotify


# Link Cask Apps to Alfred
echo Link all brew cask to Alfred

brew cask alfred link

echo Display all installed by brew

brew list

echo Display all installed by brew-cask

brew cask list

echo Cleanup brew!

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*