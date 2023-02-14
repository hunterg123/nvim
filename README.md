# neovim-config
This is how to set up this Neovim config on a Mac assuming Neovim is already installed. For info installing Neovim see: https://github.com/neovim/neovim
1. Ensure there is a .config folder in the home directory, if not, create one
2. Clone the repo inside of ~/.config
3. Ensure that the latest version of [Neovim](https://github.com/neovim/neovim) is installed
4. Change to the home directory, then run this script to install packer (the package manager used)
```console
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
5. Open neovim using nvim, run ```:PackerInstall```
6. After running ```:PackerInstall```, run ```:PackerSync```
7. Install a patched font from [NerdFonts](https://www.nerdfonts.com)
