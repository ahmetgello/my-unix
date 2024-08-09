# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gnzh"
ZSH_THEME="sorin"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt colorize)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

y() {
  if [ $# -eq 0 ]; then
    echo "Usage: y <search_term>"
  else
    search_term="$*"
    open "https://www.youtube.com/results?search_query=$search_term"
  fi
}

w() {
  if [ $# -eq 0 ]; then
    echo "Usage: w <search_term>"
  else
    search_term="$*"
    open "https://en.wikipedia.org/wiki/Special:Search?go=Go&search=$search_term"
  fi
}

google() {
   if [ $# -eq 0 ]; then
     echo "Usage: g <search_term>"
   else
     search_term="$*"
     open "https://www.google.com/search?q=$search_term"
  fi
}

i() {
   if [ $# -eq 0 ]; then
     echo "Usage: i <search_term>"
   else
     search_term="$*"
     open "https://www.google.com/search?tbm=isch&q=$search_term"
  fi
}

m() {
   if [ $# -eq 0 ]; then
     echo "Usage: m <search_term>"
   else
     search_term="$*"
     open "https://www.google.com/maps/search/$search_term"
  fi
}


maily() {
   if [ $# -eq 0 ]; then
     echo "Usage: maily <search_term>"
   else
     search_term="$*"
	 open "https://mail.google.com/mail/u/$search_term/#inbox"
  fi
}

brown() {
   if [ $# -eq 0 ]; then
     echo "Usage: brown <volume>"
   else
     volume="$*"
	 afplay -v $volume ~ahmetkallo/Music/Music/Noise/Brown.mp3 
  fi
}

mkdil() {
   if [ $# -eq 0 ]; then
     echo "Usage: mkdil <folder name>"
   else
     folderName="$*"
	 mkdir $folderName && ls
  fi
}

alias mailaty="open https://mail.google.com/mail/u/0/#inbox && open https://mail.google.com/mail/u/1/#inbox && open https://mail.google.com/mail/u/2/#inbox && open https://mail.google.com/mail/u/3/#inbox"


alias cal="open 'https://calendar.google.com'"
alias calnew="open 'https://cal.new'"


alias shit="echo study bro its ok!"

alias physics="open ~ahmetkallo/Desktop/AUPwMP15EB.pdf && ccf"
alias calculus="open ~ahmetkallo/Desktop/ATCB.pdf && ccf"

eval $(thefuck --alias)

alias zshrc="vim ~/.zshrc"
alias zshrcs="source ~/.zshrc"

alias gs="git status"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias c="clear"
