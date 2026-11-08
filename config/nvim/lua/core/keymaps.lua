local map = vim.keymap.set

map('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
map('n', '<C-f>', ':NvimTreeFindFile<CR>', { silent = true })

local ts = require('telescope.builtin')
map('n', '<leader>ff', ts.find_files, {})
map('n', '<leader>fg', ts.live_grep, {})
map('n', '<leader>fb', ts.buffers, {})

map('n', '<C-t>', ':tabnew<CR>')
map('n', '<C-q>', ':tabclose<CR>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

map('n', '<C-Left>', '<C-w>h')
map('n', '<C-Right>', '<C-w>l')
map('n', '<C-Down>', '<C-w>j')
map('n', '<C-Up>', '<C-w>k')

map('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Prev buffer' })

map('n', '<leader>x', ':bdelete<CR>', { desc = 'Close buffer' })

map('n', 's', function() require("flash").jump() end)
