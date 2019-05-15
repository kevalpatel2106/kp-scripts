# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kevalpatel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


############ Antigen Plugin manager
source /usr/local/share/antigen/antigen.zsh


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

alias update-all="curl -L https://gist.githubusercontent.com/kevalpatel2106/f59433705e4913372e223d0440548604/raw/de58b566989bad98099439a716da38d242444a32/update-all.sh | bash"

# Git alias
alias gl="git log --oneline --graph"
alias gpf="git push -f origin"
alias gp="git push origin"
alias ga="git add ." 
Alias gb="git branch"

# Cookpad specific commands
alias testCkpd="./gradlew clean :cookpad:jacocoTestReport" 
alias installCkpd="./gradlew clean --daemon && ./gradlew assembleGlobalRelease --daemon && adb -d install -r cookpad/build/outputs/apk/global/release/cookpad-global-release.apk && adb shell am start -n com.mufumbo.android.recipe.search/com.cookpad.android.app.gateway.GatewayActivity"
alias installDebug="./gradlew clean --daemon && ./gradlew assembleGlobalDebug --daemon && adb -d install -r cookpad/build/outputs/apk/global/debug/cookpad-global-debug.apk && adb shell am start -n com.mufumbo.android.recipe.search/com.cookpad.android.app.gateway.GatewayActivity"
alias copyCkpd="adb -d install -r cookpad/build/outputs/apk/global/release/cookpad-global-release.apk && adb shell am start -n com.mufumbo.android.recipe.search/com.cookpad.android.app.gateway.GatewayActivity"


############ Plugins

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-apple-touchbar)
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
