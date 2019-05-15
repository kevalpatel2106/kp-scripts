#!/usr/bin/env sh

# Check for App Store updates from apple
 softwareupdate -i -a

# Set xcode tools
xcode-select —-install

## Set homebrew
echo "Setting up Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget curl git node youtube-dl cocoapods openssl

## Install Anaconda
echo "Setting up Anaconda..."
brew install python
read -n 3 -r -p "Download Anaconda... https://anaconda.com/download/#macos. Type yes once installed: (yes)"
conda create -n py2 python=2.7 anaconda

## Setup Go
echo "Setting Go..."
brew install go
cd ~/Documents && mkdir Go mkdir Go/src && cd ~/Documents

## Setup Android
echo "Setting up Android..."
brew install gradle kotlin
conda create -n jdk8 openjdk=8.0.152 anaconda
read -n 3 -r -p "Download Android Studio... https://developer.android.com/studio. Type yes once installed: (yes)"

## Setup GCP
echo "Setting up GCP..."
echo "Set the SDK directory to (~/Documents/Go/)"
curl https://sdk.cloud.google.com | bash  && cd ~/Documents/Go/
exec -l $SHELL
gcloud init && echo "y" | gcloud components install

## Install other apps
read -n 3 -r -p "Download (https://getkap.com). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://getpostman.com). Type yes once installed: (yes)"
read -n 3 -r -p "Download (http://chrome.google.com). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://code.visualstudio.com/download). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://www.docker.com/products/docker-desktop). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://www.vysor.io). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://www.android.com/filetransfer/). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://www.videolan.org/vlc/download-macosx.en-GB.html). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://sqlitebrowser.org). Type yes once installed: (yes)"
read -n 3 -r -p "Download (https://www.mozilla.org/en-GB/firefox/). Type yes once installed: (yes)"
read -n 3 -r -p "Download (Magnet). Type yes once installed: (yes)"
read -n 3 -r -p "Download (Bandwidth+). Type yes once installed: (yes)"
read -n 3 -r -p "Download (OneNote). Type yes once installed: (yes)"


## Clean up
echo "Cleaning up..."
brew update && brew upgrade && brew cleanup
echo "y" | conda update --all && conda clean -y -a
echo "y" | gcloud components update


## Set up terminal
echo "Setting up iTerm2 + zsh..."
brew cask install iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install antigen
echo "Restart NOW!"
