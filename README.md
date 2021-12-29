# dotfiles
A set of vim, zsh, git, and tmux configuration files.

# Zsh configuration - Mac
My zsh config uses oh-my-zsh and built in commands namely for git and tmux

### Requirements:
1. Homebrew, zsh, git, curl and wget<br />
2. Install [homebrew](https://brew.sh/)<br />
   If you encounter the error below<br />
   `Error: Failed to link all completions, docs and manpages: Permission denied`<br />
   run the following command<br />
   `sudo chown -R $USER /usr/local/*`<br />
   The command tells your computer to allow your user to modify all files in the /usr/local/ directory<br />
4. Install zsh, git, curl and wget: <br />
`brew install zsh curl wget`<br />

### Iterm2 setup
1. Download [Iterm2](https://www.iterm2.com/)<br />
2. Download Iterm color schemes<br />
`https://github.com/MartinSeeler/iterm2-material-design`<br />
`https://github.com/mbadolato/iTerm2-Color-Schemes`<br />
3. Download [powerline fonts](https://github.com/powerline/fonts)<br />
4. Additional [font](https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf)<br />

### Set primary shell to zsh
1. Change shell to newest version of zsh<br />
`chsh -s /usr/local/bin/zsh`<br />
2. Close and reopen iterm and run `echo $0` to confirm your running zsh.

### Oh My Zsh setup
1. Install [Oh My Zsh](https://ohmyz.sh/#install)<br />
2. Install the [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh) theme<br />
3. Update zsh theme in ~/.zshrc file to `ZSH_THEME="powerlevel9k/powerlevel9k"`<br />

#### Oh My Zsh Plugins
1. Syntax Highlighting Plugin<br />
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`<br />
Add `zsh-syntax-highlighting` under plugins in the ~/,zshrc file.<br />
2.Auto Suggestion Plugin<br />
`git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`<br />
Add `zsh-autosuggestions` under plugins in the ~/,zshrc file.<br />

#### ScreenShot of zsh setup
![alt text](https://raw.githubusercontent.com/abfarah/dotfiles/master/Zsh_Screenshot.png "Zsh Setup")

# Vim configuration  
My vim config uses Vundle

### Requirements
To install on mac using [homebrew](https://brew.sh/) <br />
   `brew install vim`<br />

## Vundle installation and configuration
1. Install Vundle:<br />
   `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`<br />
2. Configure Plugins:<br />
Put this at top of .vimrc file to install vundle and plugins.<br />
```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" highlight searched files and turn of search case sensitivity
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
" Plugin 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"
" Plugin 'git://git.wincent.com/command-t.git'
" 
" git repos on your local machine (i.e. when working on your own plugin)
"
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
```
To install plugins open vim and run `:PluginInstall`<br />

### Plugins I use for vim
1. Ctrl-p
2. NERDTree
3. AG for Vim

#### Screenshot of vim setup
![alt text](https://raw.githubusercontent.com/abfarah/dotfiles/master/Vim_Setup.png "Vim Setup")
