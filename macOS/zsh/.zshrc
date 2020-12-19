# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git textmate ruby autojump osx mvn gradle)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/iftop/1.0pre4/sbin/"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias brew
alias bu='brew update'
alias bi='brew install'
alias bs='brew search'
#alias brew cask
alias bcu='brew cask update'
alias bci='brew cask install'
alias bcc='brew cask cleanup'
alias bcs='brew cask search'
#alias -s 指定文件类型打开程序
alias -s html=mate
alias -s javascript=mate

#alias finder 使用终端快速打开常用文件夹
#open 临时文件夹
alias odl='open Downloads/'
alias otp='open /Volumes/YaQinKing/Temp'
#open 移动硬盘上
alias ostudy='open /Volumes/YaQinKing/Study'
alias olive='open /Volumes/YaQinKing/LIVE'
alias omusic='open /Volumes/YaQinKing/Music'
alias odlpic='open /Volumes/YaQinKing/Picture'
alias opodcast='open /Volumes/YaQinKing/Podcasts'
alias opv='open /Volumes/YaQinKing/PV'
alias oevent='open /Volumes/YaQinKing/Event'
alias obackup='open /Volumes/YaQinKing/Backup'
alias omad='open /Volumes/YaQinKing/MAD'
alias obk='open /Volumes/YaQinKing/BK'
alias oidev='open /Volumes/YaQinKing/iDev'
#open 用户文件夹
alias obook='open /Users/yaqinking/Documents/Book'
alias omdb='open /Users/yaqinking/Documents/Mac\ Dev'
alias opic='open /Users/yaqinking/Pictures'
alias omov='open /Users/yaqinking/Movies'
alias ompx='open /Users/yaqinking/Pictures/MPlayerX'
#open 用户资源库 系统资源库 根目录资源库
alias o/lib='open /Library'
alias oulib='open /Users/yaqinking/Library'
alias oslib='open /System/Library'
alias oulibas='open /Users/yaqinking/Library/Application\ Support'
alias o/libas='open /Library/Application\ Support'

#Git
alias gadd='git add .'
alias gcommit='git commit -m '
alias gpush='git push'





[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
