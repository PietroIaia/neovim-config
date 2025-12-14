-- Nvim Keymaps
vim.keymap.set('n', '<leader><Left>', '<C-w>h')
vim.keymap.set('n', '<leader><Right>', '<C-w>l')
vim.keymap.set('n', '<leader><Down>', '<C-w>j')
vim.keymap.set('n', '<leader><Up>', '<C-w>k')
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")
vim.keymap.set("n", "<leader>i", "viw")
vim.keymap.set("n", "<S-Down>", "<C-d>zz")
vim.keymap.set("n", "<S-Up>", "<C-u>zz")


-- LSP Keymaps
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)


-- Telescope Keymaps
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<C-p>", telescope.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	telescope.grep_string({ search = vim.fn.input("Find > ", vim.fn.expand("<cword>")) });
end)
vim.keymap.set("v", "<leader>ps", function()
	local saved_reg = vim.fn.getreg('"')
	vim.cmd('noau normal! "vy"')
	local selection = vim.fn.getreg('v')
	vim.fn.setreg('"', saved_reg)
	telescope.grep_string({ search = vim.fn.input("Find > ", selection) });
end)


-- Undo tree keymaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- ThePrimeagen keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- nvim-tree keymaps
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
vim.keymap.set('i', '<C-CR>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    return blink.accept()
  else
    return '<CR>'
  end
end, { expr = true, silent = true })

-- Navigate down in completion menu
vim.keymap.set('i', '<C-Down>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    blink.select_next({ wrap = true })
  end
end, { expr = true, silent = true })

-- Navigate up in completion menu
vim.keymap.set('i', '<C-Up>', function()
  local blink = require('blink.cmp')
  if blink.is_visible() then
    blink.select_prev({ wrap = true })
  end
end, { expr = true, silent = true })

