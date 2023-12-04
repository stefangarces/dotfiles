-- Shorten function name
local keymap = vim.keymap.set

-- Keymaps for better default experience
-- See `:help keymap()`
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
keymap('n', '<leader>a', 'ggVG', { desc = 'Select all shortcut' })

-- Enable to use Shift + hjkl to move around in Insert Mode
keymap('i', '<S-h>', '<Left>', {noremap = true, silent = true})
keymap('i', '<S-j>', '<Down>', {noremap = true, silent = true})
keymap('i', '<S-k>', '<Up>', {noremap = true, silent = true})
keymap('i', '<S-l>', '<Right>', {noremap = true, silent = true})

-- Disabling using arrow keys in all modes 
keymap({'v', 'i', 'n'}, '<Up>', '<Nop>', {noremap = true, silent = true})
keymap({'v', 'i', 'n'}, '<Down>', '<Nop>', {noremap = true, silent = true})
keymap({'v', 'i', 'n'}, '<Left>', '<Nop>', {noremap = true, silent = true})
keymap({'v', 'i', 'n'}, '<Right>', '<Nop>', {noremap = true, silent = true})

-- Disabling ctrl + z
keymap({'v', 'i', 'n'}, '<C-z>', '<Nop>', {noremap = true, silent = true})

keymap({'n'}, '<leader>im', ":Telescope import<CR>", { noremap = true })
keymap({'n'}, '<leader>f', ":Neoformat<CR>", { noremap = true })


-- keymaps for opening telescope-file-browser
keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
