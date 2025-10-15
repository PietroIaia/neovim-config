-- Nvim Keymaps
vim.keymap.set('n', '<leader><Left>', '<C-w>h')
vim.keymap.set('n', '<leader><Right>', '<C-w>l')


-- Telescope Keymaps
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<C-p>", telescope.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	telescope.grep_string({ search = vim.fn.input("Grep > ")});
end)


-- Undo tree keymaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- ThePrimeagen keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


-- nvim-tree keymaps
local nvim_tree = require("nvim-tree.api")

vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-h>", vim.cmd.NvimTreeCollapse)


-- barbar keymaps
vim.keymap.set('n', '<C-Left>', vim.cmd.BufferPrevious)
vim.keymap.set('n', '<C-Right>', vim.cmd.BufferNext)

vim.keymap.set('n', '<C-c>', vim.cmd.BufferClose)

vim.keymap.set('n', '<C-1>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<C-2>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<C-3>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<C-4>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<C-5>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<C-6>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<C-7>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<C-8>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<C-9>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<C-0>', vim.cmd.BufferLast)

-- blink keymaps
-- Accept completion with Enter
vim.keymap.set('i', '<CR>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    return blink.accept()
  else
    return '<CR>'
  end
end, { expr = true, silent = true })

-- Navigate down in completion menu
vim.keymap.set('i', '<Down>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    blink.select_next({ wrap = true })
  else
    return '<Down>'
  end
end, { expr = true, silent = true })

-- Navigate up in completion menu
vim.keymap.set('i', '<Up>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    blink.select_prev({ wrap = true })
  else
    return '<Up>'
  end
end, { expr = true, silent = true })
