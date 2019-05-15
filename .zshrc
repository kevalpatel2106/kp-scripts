# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kevalpatel/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


############ Set up antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# Load the bundles
antigen bundle git
antigen bundle gradle
antigen bundle npm
antigen bundle web-search
antigen bundle encode64
antigen bundle zsh-apple-touchbar
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


############ Android SDK
export ANDROID_HOME=/Users/kevalpatel/Library/Android/sdk
export PATH=$PATH:/Users/kevalpatel/Library/Android/sdk/platform-tools 
export PATH=$PATH:/Users/kevalpatel/Library/Android/sdk/tools/bin 


############ Setting repo tool
export PATH=$PATH:/Users/kevalpatel/Documents/APSP/bin


############ Added by Anaconda3 5.2.0
export PATH="/anaconda3/bin:$PATH"
. /anaconda3/etc/profile.d/conda.sh


############ Go set up
export GOPATH=$HOME/Documents/Go
export PATH=$PATH:$GOPATH/bin


############ Intelij Dev Setup
export IDEA_HOME="$HOME/Documents/intellij-community"
export JDK_18_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home"


############ Set google cloud sdk
export PATH=$PATH:$HOME/Documents/Go/google-cloud-sdk/bin


############ Aliases

alias update-all="curl -L https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/update-all.sh | bash"
