vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<cr>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>pv', ':Sex<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>vrc', ':lua require("telescope.telescope").search_dotfiles()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>,', ':bp<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>.', ':bn<cr>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").git_files()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pf', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pw', '<cmd>lua require("telescope.builtin").grep_string { search = vim.fn.expand("<cword>")}<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pb', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>vh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>vrc', '<cmd>lua require("telescope.builtin").find_files({ prompt_title = "< VimRc >",   cwd = "C:/Users/cristiano.moraes/AppData/Local/nvim" })<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>lua require("telescope.telescope").git_branches()<cr>', { noremap = true, silent = true })
