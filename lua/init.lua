require('plugins')
require('config')

-- Vim Options
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false

-- COLORSCHEMES ------------------------------------
-- vim.cmd("colorscheme torte")
-- vim.cmd("colorscheme dracula")
vim.cmd("colorscheme tokyonight-moon")


-- Leaders
vim.cmd("nnoremap :e :NvimTreeToggle<CR>")
vim.cmd("nnoremap :f :Telescope find_files<CR>")
vim.cmd("nnoremap :F :Telescope find_files<CR>")
vim.cmd(":set termguicolors")
vim.cmd(":set splitright")
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

