#!/bin/bash
set -e
NVIMDIR=~/.config/nvim
PACKERDIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Checking Neovim install..."
if ! command -v nvim &> /dev/null
then
  echo "Neovim is not installed or it does not appear to be. Please ensure it is installed at https://github.com/neovim/neovim/wiki/Installing-Neovim and re-run the script."
  exit
fi


echo "Checking for nvim-Config directory..."
if [ -d "$NVIMDIR" ];
then
    echo "$NVIMDIR directory exists."
else
	echo "nvim-Config directory does not exist."
  echo "Cloning nvim-Config..."
  git clone https://github.com/hunterg123/nvim.git ~/.config/nvim
fi

echo "Checking for Packer directory..."
if [ -d "$PACKERDIR" ];
then
    echo "$PACKERDIR directory exists."
else
	echo "$PACKERDIR directory does not exist."
  echo "Creating $PACKERDIR and cloning Packer..."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi


echo "Updating Packer and plugins..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' &> /dev/null
echo "Successfully installed!"
