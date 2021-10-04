# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kevalpatel/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# gpg
export GPG_TTY=$(tty)

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

############ Aliases

alias update-all="curl -L https://raw.githubusercontent.com/kevalpatel2106/kp-scripts/master/update-all.sh | bash"
