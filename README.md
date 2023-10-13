# Beautiful-Terminal

- 目录

## 准备工作

建议先安装 [homebrew](https://brew.sh/), 方便后续工具安装：

```bash
/bin/bash -c "$(curl -fsSL <https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh>)"
```

## 安装 iTerm2

1. `brew install iterm2`
2. 将 iTerm2 自带 theme 修改为 Minimal，**Preferences → Appearance → General → Theme** 以达到顶栏沉浸式的效果
3. 下载主题 [Dracula](https://draculatheme.com/iterm/) 解压后更换 **Preferences → Profiles → Color → Color Presets → Import**
4. **打开 Status bar**
    
    **Preferences → Profiles → Session → Status bar → Configure Status Bar** 并根据自己的需求选择要显示的插件
    

## 安装 [Nerd Fonts](https://www.nerdfonts.com/) 的字体

```bash
brew tap homebrew/cask-fonts &&\nbrew install --cask font-<FONT NAME>-nerd-font

# 我的字体
brew tap homebrew/cask-fonts &&\nbrew install --cask font-<JetBrains Mono>-nerd-font
```

**修改 iTerm2 字体为 Nerd Fonts**

## 安装 oh-my-zsh

### 先安装 [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH):

```bash
brew install zsh
```

- **查看已安装的 shell**

```bash
cat /etc/shells
```

- **查看 zsh 版本**

```bash
zsh --version
```

- **查看当前使用的 shell**

```bash
echo $SHELL
```

### 将 zsh 设置为默认 shell

- **For Apple Silicon macs**

```bash
chsh -s /opt/homebrew/bin/zsh
```

- **For intel macs**

```bash
chsh -s /usr/local/bin/zsh
```

- **macOS High Sierra and older**

```bash
chsh -s /bin/zsh
```

## 再安装 [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
brew install wget
sh -c "$(wget -O- <https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh>)"
```

### 出现这个就可以了！！！

![Untitled](https://github.com/kerwinxxxxxx/Beautiful-Terminal/blob/main/ohmyzsh.png?raw=true)

### 解决 Mac 每次都要执行 `source ~/.bash_profile` 配置的环境变量才生效的问题

Oh-My-Zsh 默认是加载 `~/.zshrc` ， 默认是没有加载用户环境变量的 需要在 `~/.zshrc` 中添加一行 `source ~/.bash_profile` 之后，每次启动控制台窗口都会去加载用户环境变量

### 安装 [Dracula](https://draculatheme.com/zsh) 主题

```bash
git clone <https://github.com/dracula/zsh.git>

mv zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/

mv zsh/lib/ ~/.oh-my-zsh/themes/lib
```

打开 `~/.zshrc` 文件并设置 `ZSH_THEME="dracula"`

### 内置主题列表

`oh-my-zsh` 提供一批内置主题，可以直接设置使用

1. 在内置主题列表寻找你你喜欢的主题：https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
2. 在 `~/.zshrc` 配置文件里设置 `ZSH_THEME` 为你的主题名称
3. 激活设置 `source ~/.zshrc`

### 第三方主题列表

许多第三方也开发了供 `oh-my-zsh` 使用的主题，可以去第三方主题列表查看和安装：

https://github.com/robbyrussell/oh-my-zsh/wiki/External-themes

## 安装 oh-my-zsh 必备插件

`oh-my-zsh` 有非常丰富的插件可供使用，下面列举一些必备插件，可以大幅提高生产力。

示例如下：

```bash
# ~/.zshrc:
plugins=(
  git
  extract
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

### git

自带插件，可以使用缩写命令，比如 `gaa` -> `git add --all`, 通过 `alias | grep git` 查看所有支持缩写命令

激活：添加到 `~/.zshrc` 的 plugins 列表

### extract

自带插件，不用再使用复杂的 `tar` 来解压压缩包了

激活：添加到 `~/.zshrc` 的 plugins 列表

### [autojump](https://github.com/wting/autojump)

使用 `j` 命令直接快速进入某个目录，比如 `j Downloads` -> `cd ~/Downloads`

安装：`brew install autojump`

安装完按照提示在 `~/.zshrc` 配置文件添加：

```bash
# Add the following line to your ~/.bash_profile or ~/.zshrc file:
  [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

#If you use the Fish shell then add the following line to your ~/.config/fish/config.fish:
  [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Restart your terminal for the settings to take effect.

# zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
```

### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

输入时按右方向键 ⇥ 自动补全命令

- **自定义安装**
    
    ```jsx
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
    
    `vim ~/.zshrc` 添加
    
    ```bash
    plugins=(
    other plugin …
    zsh-autosuggestions
    )
    ```
    
    `source ~/.zshrc` 重新加载
    
- **home brew 安装**
    
    安装：`brew install zsh-autosuggestions`
    
    安装完按照提示在 `~/.zshrc` 配置文件文末添加：
    
    ```bash
    # To activate the autosuggestions, add the following at the end of your .zshrc:
    
      source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    
    # You will also need to restart your terminal for this change to take effect.
    ```
    

### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

命令高亮插件，命令不再只是同一个颜色了

- **自定义安装**
    
    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```
    
    `vim ~/.zshrc` 添加
    
    ```bash
    plugins=(
    other plugin …
    zsh-syntax-highlighting
    )
    ```
    
    `source ~/.zshrc` 重新加载
    
- **home brew 安装**
    
    安装：`brew install zsh-syntax-highlighting`
    
    添加：`zsh-syntax-highlighting` 到 `~/.zshtc` plugins 列表。
    

[其他安装方法参考](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

## 安装 [Starship](https://starship.rs/zh-CN/)

```bash
brew install starship
```

在 `~/.zshrc` 的最后，添加以下内容：

```bash
# ~/.zshrc

eval "$(starship init zsh)"
```

我的配置文件 [Starship.toml](https://github.com/kerwinxxxxxx/Beautiful-Terminal/blob/main/starship.toml)

## 安装 [lsd](https://github.com/lsd-rs/lsd)

`brew install lsd` or `sudo port install lsd`

## 安装 Fig

`brew install fig`

## 其他

- mac 10.14.3 问题
    
    ```bash
    	Warning: plugin zsh-syntax-highlighting not found
    	Warning: plugin zsh-autosuggestions not found
    
    I solve it by the command :
    
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    
    on-my-zsh check if the plugin is exit at '$base_dir/plugins/$name/$name.plugin.zsh' or '$base_dir/plugins/$name/_$name' , so the plugin should be at this path .
    
    ```
    
- My `~/.zshrc` file
    
```jsx
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kerwin/.oh-my-zsh"

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
        osx
	web-search
        zsh-autosuggestions
        zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

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
  alias ssh="ct ssh"
  alias telnet="ct telnet"
  alias screen="ct screen"

export PATH=/opt/homebrew/bin:$PATH

# starship
eval "$(starship init zsh)"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Dracula zsh-syntax-highlighting
source /Users/kerwin/zsh-syntax-highlighting/zsh-syntax-highlighting.sh

eval $(thefuck --alias)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
    ```