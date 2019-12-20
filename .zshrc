# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/roberto/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nebirhos"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"

alias ohmyzsh="code ~/.oh-my-zsh"

alias resetIonicIos="ionic cordova platform rm ios;
echo ' ';
echo '####### Borrada la plataforma ios';
echo ' ';
rm -rf node_modules;
echo ' ';
echo '####### Paquetes npm borrados';
echo ' ';
npm i;
echo ' ';
echo '####### Paquetes npm reinstalados';
echo ' ';
ionic cordova platform add ios@5.0.1;
echo ' ';
echo '####### Reinstalada la plataforma ios 5.0.1';
echo ' ';
cordova plugin add phonegap-plugin-push@2.2.3 --force;
echo ' ';
echo '####### Forzada la instalacion del plugin de push';
echo ' ';
cordova plugin add cordova-plugin-x-socialsharing@5.4.0 --force ;
echo ' ';
echo '####### Forzada la instalacion del plugin de socialsharing';
echo ' ';
cd platforms/ios;
pod install --repo-update;
echo ' ';
echo '####### Instalados los pods';
echo ' ';
cd ../../;
ionic cordova build ios"

alias resetIonicAndroid="ionic cordova platform rm android;
echo ' ';
echo '####### Borrada la plataforma android';
echo ' ';
rm -rf node_modules;
echo ' ';
echo '####### Paquetes npm borrados';
echo ' ';
npm i;
echo ' ';
echo '####### Paquetes npm reinstalados';
echo ' ';
ionic cordova platform add android@8.1.0;
echo ' ';
echo '####### Reinstalada la plataforma android 8.1.0';
echo ' ';
cordova plugin add phonegap-plugin-push@2.2.3 --force;
echo ' ';
echo '####### Forzada la instalacion del plugin de push';
echo ' ';
cordova plugin add cordova-plugin-x-socialsharing@5.4.0 --force ;
echo ' ';
echo '####### Forzada la instalacion del plugin de socialsharing';
echo ' ';
ionic cordova build android"

alias resetIonic="
rm -rf platforms;
echo ' ';
echo '####### Borrada la carpeta platforms';
echo ' ';
rm -rf plugins;
echo ' ';
echo '####### Borrada la carpeta plugins';
echo ' ';
npm i;
echo ' ';
echo '####### Paquetes npm reinstalados';
echo ' ';
ionic cordova platform add ios@5.0.1;
echo ' ';
echo '####### Reinstalada la plataforma ios 5.0.1';
echo ' ';
ionic cordova platform add android@8.1.0;
echo ' ';
echo '####### Reinstalada la plataforma android 8.1.0';
echo ' ';
cordova plugin add phonegap-plugin-push@2.2.3 --force;
echo ' ';
echo '####### Forzada la instalacion del plugin de push';
echo ' ';
cordova plugin add cordova-plugin-x-socialsharing@5.4.0 --force ;
echo ' ';
echo '####### Forzada la instalacion del plugin de socialsharing';
echo ' ';
cd platforms/ios;
pod install --repo-update;
echo ' ';
echo '####### Instalados los pods';
echo ' ';
cd ../../;
echo ' ';
echo '####### Finalizado el reset'
echo ' ';
"
alias resetStripePlugin="cd cordova-plugin-stripe;
npm run build;
npm i;
echo '####### Actualizado el plugin';
cd ..;
npm i;
echo '####### Actualizado el proyecto';
ionic cordova plugin rm cordova-plugin-stripe;
ionic cordova plugin add cordova-plugin-stripe;
echo '####### Reinstalado el plugin';
cd platforms/ios;
pod install --repo-update;
echo '####### Instalados los pods';
cd ../..;
ionic cordova build ios;
echo '####### Finalizado el reset';
"

alias gs="git status"

alias gl="git log"

alias gcom="git checkout master"

alias gaa="git add ."

alias gc="git commit -m "

alias gp="git push"

alias nah="git reset --hard && git clean -df"

alias dev="cd ~/Dev"

alias gpgr="git pull origin develop && git rebase develop"

SPACESHIP_TIME_SHOW=true
SPACESHIP_RUBY_SYMBOL=" "

SPACESHIP_NODE_SYMBOL=" "
SPACESHIP_CHAR_SYMBOL=" "
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_PACKAGE_SYMBOL=" "
SPACESHIP_PYENV_SYMBOL=" "
SPACESHIP_VENV_SYMBOL=" "

compctl -g '~/.itermocil/*(:t:r)' itermocil
fpath=(/usr/local/share/zsh-completions $fpath)
export NODE_OPTIONS="--max-old-space-size=4096"
export XDEBUG_CONFIG="idekey=VSCODE"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/build-tools/19.1.0:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PYTHONPATH="/Users/roberto/python_code"
export LDFLAGS="-L/usr/local/opt/php@7.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.2/include"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
fpath+=${ZDOTDIR:-~}/.zsh_functions
