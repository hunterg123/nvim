require('plugins')
require('config')

-- Vim Options
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.cmd("colorscheme minischeme")
vim.cmd("nnoremap :e :NvimTreeToggle<CR>")
vim.cmd(":set termguicolors")
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

