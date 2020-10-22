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


############ Set up antigen and init plugins
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# Load the bundles
antigen bundle git
antigen bundle npm
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'


# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


############ Android SDK
export ANDROID_HOME=/Users/kevalpatel/Library/Android/sdk
export PATH=$PATH:/Users/kevalpatel/Library/Android/sdk/platform-tools 
export PATH=$PATH:/Users/kevalpatel/Library/Android/sdk/tools/bin 

############ Golang
export GOROOT=$HOME/go
export GOPATH=$GOROOT/bin
export PATH=$PATH:$GOPATH

############ App engine SDK
export PATH=$HOME/google-cloud-sdk/bin:$PATH


############ Added by Anaconda3 5.2.0
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kevalpatel/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kevalpatel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kevalpatel/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kevalpatel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda deactivate
# <<< conda initialize <<<


############ Aliases

alias update-all="curl -L https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/update-all.sh | bash"
alias mirror="scrcpy --bit-rate 4M --stay-awake --show-touches --disable-screensaver"

# Cookpad specific commands
alias ckpdTest="./gradlew testGlobalProductionDebug --stacktrace --continue"
alias ckpdClean="./gradlew cleanBuildCache clean && ./gradlew --stop"

alias ckpdDebug="./gradlew :cookpad:assembleGlobalProductionDebug && adb -d install -r cookpad/build/outputs/apk/globalNoInstrumentationStandard/debug/cookpad-global-noInstrumentation-standard-debug.apk && adb shell am start -n com.mufumbo.android.recipe.search.debug/com.cookpad.android.app.gateway.GatewayActivity"

alias ckpdRelease="./gradlew :cookpad:assembleGlobalProductionRelease && adb -d install -r cookpad/build/outputs/apk/globalNoInstrumentationStandard/release/cookpad-global-noInstrumentation-standard-release.apk && adb shell am start -n com.mufumbo.android.recipe.search/com.cookpad.android.app.gateway.GatewayActivity"
