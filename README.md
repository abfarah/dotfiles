# dotfiles
A set of vim, zsh, git, and tmux configuration files.

# Vim configuration  
My vim config uses Vundle

### Requirements
1. vim
To install vim on arch run
`sudo pacman -S vim`
or install to install on mac using [homebrew](https://brew.sh/)
`brew install vim`

## Vundle installation and configuration
1. Set up Vundle
   `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Configure Plugins - copy code below into `~.vimrc`
```vim
   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   " The following are examples of different formats supported.
   " Keep Plugin commands between vundle#begin/end.
   " plugin on GitHub repo
   Plugin 'tpope/vim-fugitive'
   " plugin from http://vim-scripts.org/vim/scripts.html
   " Plugin 'L9'
   " Git plugin not hosted on GitHub
   Plugin 'git://git.wincent.com/command-t.git'
   " git repos on your local machine (i.e. when working on your own plugin)
   Plugin 'file:///home/gmarik/path/to/plugin'
   " The sparkup vim script is in a subdirectory of this repo called vim.
   " Pass the path to set the runtimepath properly.
   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " Install L9 and avoid a Naming conflict if you've already installed a
   " different version somewhere else.
   " Plugin 'ascenator/L9', {'name': 'newL9'}

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
3. Install Plugins
   Launch `vim` and run `:PluginInstall`
   To install from command line run: `vim +PluginInstall +qall` 

### Plugins I use for vim
1. Ctrl-p
2. NERDTree
3. AG for Vim

#### Screenshot of vim setup
![alt text](https://raw.githubusercontent.com/abasnfarah/dotfiles/master/Vim_ScreenShot.png "Vim Setup")

# Zsh configuration
My zsh config uses oh-my-zsh themes and built in commands namely for git and tmux

### Requirements:
1. zsh, git, curl and wget
To install on arch run
`sudo pacman -S zsh wget curl git`
to install on mac using [homebrew](https://brew.sh/) run 
`brew install zsh curl wget`
2. mac or arch linux machine
3. Change primary shell to zsh
To change primary shell to zsh run
`chsh -s $(which zsh)`

#### ScreenShot of zsh setup
![alt text](https://github.com/Abdullahif14688/dotfiles/blob/master/Zsh_Shell_Screenshot.png "Zsh Setup")

|[Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)|This adds many useful zsh themes.            |`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`|
|Tmux                                                  |This gives more tabbing power to the console |`cp ~/dotfiles/tmux/.tmux.config ~/.tmux.config`                                                        |

This is the primary way to install vim and zsh dotfiles. 
This repository hosts many other dotfiles config files but those are the main ones.  
Feel free to copy my dotfiles or change them to match your own personal setup. 

Thanks  
Abdullahi Farah

