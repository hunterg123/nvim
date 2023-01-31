# neovim-config
This is how to set up this Neovim config on a Mac assuming Neovim is already installed. For info installing Neovim see: https://github.com/neovim/neovim
1. Create a .config/nvim folder in the home directory
2. Clone the repo inside of .config/nvim
3. cd to the home directory, then run this script
```console
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
4. Open neovim using nvim, run ```:PackerInstall```
5. After running ```:PackerInstall```, run ```:PackerSync```
6. Install a patched font from [NerdFonts](https://www.nerdfonts.com)
