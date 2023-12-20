# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kerwin/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See <https://github.com/ohmyzsh/ohmyzsh/wiki/Themes>
ZSH_THEME="dracula"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autocomplete
	# zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_THEME_TERM_TITLE_IDLE="Kerwin"

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
#--------------------------#
# Other
# -------------------------#
alias ls="lsd"
alias ssh="ct ssh"
alias screen="ct screen"
alias telnet="ct telnet"
alias zshrc="source ~/.zshrc"
# -------------------------#
# homebrew-bundle
# -------------------------#
alias WeChat="open -n /Applications/WeChat.app/Contents/MacOS/WeChat"
alias backup="brew bundle dump --describe --force --file=\"~/Library/Mobile Documents/com~apple~CloudDocs/AppList/Brewfile_$(date +\"%Y-%m-%d-%H%M%S\")\""
#--------------------------#
# project simple
# -------------------------#

alias cls="clear" # 清理终端
alias ..="cd .." # 返回上一级
alias 。。="cd .." # 返回上一级
alias ...="cd ../.." # 返回上上级
alias 。。。="cd ../.." # 返回上上级
alias ....="cd ../../.." # 返回上上上级
alias 。。。。="cd ../../.." # 返回上上上级
alias Github="/Users/kerwin/Dropbox/GitHub"

#--------------------------#
# Git
# -------------------------#
alias gl="git log" # 查看提交日志
alias gp="git push" # 推送
alias ga="git add ." # 添加
alias gs="git status" # 查看状态
alias gb="git branch" # 查看分支
alias gc="git add . && git commit -m" # 提交
alias gcc="git checkout" # 切换分支
alias gbd="git branch -D" # 删除分支
alias gba="git branch -a" # 查看所有分支
alias gbm="git branch -m" # 重命名分支
alias gpf="git push --force" # 强制推送
alias gpl="git pull --rebase" # 拉取
#--------------------------#

# starship
eval "$(starship init zsh)"

# zsh-autocomplete
# source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# zsh-autosuggestions
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /Users/kerwin/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

eval $(thefuck --alias)