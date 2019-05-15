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
 
# Go back to Documents folder
cd ~/Documents

# Change wallpaper. (Sweet!!)
curl -L "https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/bing-wallpaper.sh?token=AEZBQAWNKQEDFERLTLHQOT243QBMK" | bash
