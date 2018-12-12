#!/usr/bin/env sh

# Check for App Store updates from apple
 softwareupdate -i -a
 
 # Update home-brew formulas
 brew update && brew upgrade && brew cleanup
 
 # Update Conda environment
 echo "y" | conda update --all && conda clean -y -a

 # Update google cloud
 echo "y" | gcloud components update

 # Update Android SDK
 source activate jdk8 && sdkmanager --update && source deactivate
 
 # Update AOSP
 cd ~/Documents/platform-support/ && source activate py2 && repo sync -j8 && source deactivate
 cd ~/Documents/platform-base/base/ && git stash && git pull origin
 
 # Update all Cookpad repos
 cd ~/Documents/global-android/ && git fetch && git pull origin
 cd ~/Documents/global-web && git fetch && git pull origin
 cd ~/Documents/global-ios && git fetch && git pull origin

# Update Battly Repos
cd $GOPATH/src/battly-server/api && go get

# Go back to Documents folder
cd ~/Documents