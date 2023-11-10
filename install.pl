#! /usr/bin/perl

# install dependencies
system("sudo apt update && sudo apt upgrade -y");
system("sudo apt install plantuml imv feh");

# download latest neovim and it to binaries
system("curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage $HOME/.local/bin/nvim");
system("chmod u+x $HOME/.local/bin/nvim");

# move config folder
system("cp -r ./nvim $HOME/.config/nvim");

# install hack patched font
system("mv hack $HOME/.local/share/fonts");