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
 cd ~/Documents/platform-base/base/ && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
 
 # Update all Cookpad repos
 cd ~/Documents/global-android/ && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
 cd ~/Documents/global-web && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
 cd ~/Documents/global-ios && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash

# Update Battly Repos
cd $GOPATH/src/battly-server/api && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
cd ~/Documents/battly-android && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
cd ~/Documents/battly-desktop && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash
cd ~/Documents/battly-browser-ext && curl https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/git/update-repo.sh?token=ATIYAvDkfiSfp-hIHc7SKx4RaayZJoI_ks5cGgw5wA%3D%3D | bash

# Go back to Documents folder
cd ~/Documents
