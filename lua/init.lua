require('plugins')

-- Vim Options
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.g.mapleader = ' '
-- COLORSCHEMES ------------------------------------
-- vim.cmd("colorscheme torte")
-- vim.cmd("colorscheme dracula")
vim.cmd("colorscheme tokyonight-moon")

-- Leaders
vim.cmd("nnoremap <leader>e :NvimTreeToggle<CR>")
vim.cmd("nnoremap <leader>w :w<CR>")
vim.cmd("nnoremap <leader>q :q<CR>")
vim.cmd("nnoremap <leader>f :Telescope find_files<CR>")
vim.cmd("nnoremap <leader>F :Telescope find_files<CR>")
vim.cmd("nnoremap <leader>h :Startup display<CR>")
vim.cmd(":set termguicolors")
vim.cmd(":set splitright")
vim.cmd("nnoremap <leader>sn :source $MYVIMRC<CR>")
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

