# Add colors to Terminal
# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced
export SHELL=/bin/zsh
if [ -t 1 ]; then exec $SHELL; fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
### IENV ###
[ -r ~/.ienv/entrypoint ] && source ~/.ienv/entrypoint
### VNEI ###

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Android/sdk/build-tools/19.1.0:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="/usr/bin:$PATH"
export NODE_OPTIONS="--max-old-space-size=4096"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PS1='[\u@\h \W]\e[0m\$ '