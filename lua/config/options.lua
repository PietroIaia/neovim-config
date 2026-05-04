vim.g.mapleader = " "

vim.o.winborder = 'rounded'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "150"

vim.opt.clipboard = ""

vim.opt.wrap = false
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = { '*.md' },
  callback = function()
    vim.opt.wrap = true
  end,
})
vim.api.nvim_create_autocmd({ 'BufWinLeave' }, {
  pattern = { '*.md' },
  callback = function()
    vim.opt.wrap = false
  end,
})

