# Dotfiles
My personal nvim, vim, zsh, and tmux configuration.

# Zsh configuration - Mac
My zsh config files:
`~/.zshrc`, `~/.local.zsh`, `~/.aliases.zsh`, `~/.plugins.zsh`

### Requirements:
1. (optional) Iterm2 - primary terminal
2. Install [homebrew](https://brew.sh/)<br />
   If you encounter issues related to permissions<br />
   `Chown -R $USER [Path to file]` or `Chown -R $USER:[group] [Path to file]`<br />
5. Install the following packages:<br />
```brew install zsh curl wget vim nvim nvm neofetch zsh-autosuggestions zsh-syntax-highlighting fzf tmux yarn tree gnupg```<br />

### Set primary shell to zsh 
1. Zsh is default editer in Mac OSX Catalina and greater. So steps below only apply for older versions of Max OSX.
2. Check which shell is being used: `echo $SHELL`. Skip to next section if zsh.
3. Confirm were homebrew zsh is installed: `which zsh`. Locations differ for intel and Apple Silicon laptops.
4. Add zsh to allowed shells:<br />
   `sudo echo “$(which zsh)” >> /etc/shells`<br />
   if permission issues run following: `sudo chown [username]:staff /etc/shells`<br />
6. Change shell to newest version of zsh<br />
`chsh -s [Path to zsh install]`<br />
7. Close and reopen iterm and run `echo $0` to confirm your running zsh.

### Iterm2 setup
1. Download [Iterm2](https://www.iterm2.com/)<br />
2. Download Iterm color schemes<br />
`https://github.com/MartinSeeler/iterm2-material-design`<br />
`https://github.com/mbadolato/iTerm2-Color-Schemes`<br />
3. Download [Nerd Fonts - Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts)<br />
4. Additional [font](https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf)<br />

### Dotfiles
1. Move over dotfiles from dotfiles repo<br />
```
   cp zsh/.zshrc ~/.zshrc
   cp zsh/.local.zsh ~/.local.zsh
   cp zsh/.aliases.zsh ~/.aliases.zsh
   cp zsh/.plugins.zsh ~/.plugins.zsh
   cp vim/.vimrc ~/.vimrc`<br />
   cp tmux/.tmux.conf ~/.tmux.conf
   cp -r nvim ~/.config/nvim
```
2. Reload zshrc file<br />
   `source ~/.zshrc`<br />

### Configure powerlevel10k Theme
1. `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k`
2. `P10k configure`
3. Uncomment p10k config in `~/.zshrc`

#### Zsh Plugins
1. Syntax Highlighting Plugin<br />
2. Auto Suggestion Plugin<br />
3. Confirm both plugins are being sourced in `~/.plugins.zsh`

### Configure NVM & install node
1. `mkdir ~/.nvm`
2. Uncomment nvm export in `~/.local.zsh`
3. `nvm install node`

### Install Java using SDKMan
1. Install SDKMan
```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java
```
2. Confirm install<br />
   `sdk version `<br />
   `java -version`<br />

# Vim configuration 
I moved over to NeoVim as my primary editor.
My vim config uses Plug to manage plugins

### Requirements
To install on mac using [homebrew](https://brew.sh/) <br />
   `brew install vim`<br />

## Plug installation and configuration
1. Install Plug:<br />
   ```
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
2. Make sure `~/.vimrc` is moved over from dotfiles.<br />
   Open Vim `vim`<br />
   To install plugins open vim and run `:Pluginstall`<br />
3. If yarn install error:
   run vim command `:call coc#util#install()`
3. Close and reopen vim.

# NeoVim configuration 
My primary editor. Previously used Vim.

### Requirements
To install on mac using [homebrew](https://brew.sh/) <br />
   `brew install neovim`<br />

## Configure
1. Make sure nvim lua config files are in `~/.config/nvim/`.
2. Open Nvim: `nvim`.

## After install:
1. Use mason package manager to install LSP's.<br />
   `:Mason`<br />
3. Keyboard shortcuts `<leader>km`

