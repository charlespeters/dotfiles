# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="Agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm bower colorize common-aliases)

# User configuration

export PATH="/Users/charlespeters/.rbenv/shims:/Users/charlespeters/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/charlespeters/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

EDITOR='mvim'

alias please='sudo'
alias g='git'
alias ls='ls -a'
alias gp='git push -u origin master'
alias h='cd ~/'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias npmr='trash node_modules; npm cache clean; npm install; npm start'

# Project Directories
alias cdg='cd ~/Projects/'
alias cdb='cd ~/Projects/bpxl/'
alias cdp='cd ~/Projects/personal/'

# Individual Project Directories
alias arwhd='cd ~/Projects/personal/arwhd/'
alias charles='cd ~/Projects/personal/charlespeters-jekyll/'
alias vws='cd ~/Projects/personal/viewsourc_es/'

alias typo='cd ~/Projects/typothetical/'
alias icons='cd ~/Projects/oss/justafewicons/'
alias arsenal='cd ~/Projects/oss/arsenal/'
alias twelve='cd ~/Projects/oss/arsenal/twelve/'

# New Jekyll Post
# -a = ARWHD -v Viewsources -c Charles Peters Blog
# DATE=`date +%Y-%m-%d`
# newJekyllPost() {
#     cp ~/Projects/personal/POST_TEMPLATE.md ~/Projects/personal/charlespeters-jekyll/_posts/$DATE-$1.md
#     $EDITOR ~/Projects/personal/charlespeters-jekyll/_posts/$DATE-$1.md
# }
# alias newpost=newJekyllPost
# alias editpost='atom ~/Projects/personal/charlespeters-jekyll/_posts'

# New Jekyll Post
# -a = ARWHD -v Viewsources -p Personal Blog
DATE=`date +%Y-%m-%d`
newJekyllPost() {
    ROOT=""
    if [[ "$1" == "-p" ]]; then
        ROOT=~/Projects/personal/charlespeters-jekyll/_posts
    elif [[ "$1" == "-a" ]]; then
        ROOT=~/Projects/personal/arwhd/_posts
    elif [[ "$1" == "-v" ]]; then
        ROOT=~/Projects/personal/viewsourc_es/_posts
    else
        echo "You need to pass either -p (for personal), -v (for viewsourc.es), or -a (for arwhd.co)"
    fi


    if [[ "$ROOT" != "" ]]; then
        cp ~/Projects/personal/POST_TEMPLATE.md $ROOT/$DATE-$2.md
        # cp $ROOT/$DATE-$2.md
        atom $ROOT/$DATE-$2.md
    fi
}
alias newpost=newJekyllPost


DEFAULT_USER=`whoami`
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source /Users/charles/.gulp-autocompletion-zsh/gulp-autocompletion.zsh
