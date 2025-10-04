-- shortcut to use map
local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- telescope
map("n", "<leader>f", ":Telescope find_files<CR>")     -- search current working directory
map("n", "<leader>g", ":Telescope live_grep<CR>")      -- grep
map("n", "<leader>G", ":Telescope grep_string<CR>")    -- grep word under cursor

-- misc
map("n", "<leader>b", ":NvimTreeToggle<CR>")                          --open file explorer
map('n', '<leader>j', ":lua require('FTerm').toggle()<CR>")             --open fterm
map('t', '<leader>j', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>') --close fterm
map("n", "<leader>R", ":so %<CR>")                                    --reload neovim config
map("n", "<leader>W", ":set wrap!<CR>")                               --toggle wrap
map("i", "jj", "<Esc>")                                               -- jj to exit insert mode
map("n", "<leader>s", ":w<CR>") 									  -- quick save 
map("n", "<leader>q", ":wq<CR>") 									  -- save and quit
map("n", "<leader>x", ":q!<CR>") 									  -- force quit

-- disable arrow keys
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
vim.keymap.set('v', '<Up>', '<Nop>')
vim.keymap.set('v', '<Down>', '<Nop>')
vim.keymap.set('v', '<Left>', '<Nop>')
vim.keymap.set('v', '<Right>', '<Nop>')
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')
