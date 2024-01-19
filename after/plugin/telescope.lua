local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

require('git-worktree').setup();
require('telescope').load_extension('git_worktree')

vim.keymap.set("n", "<leader>pr", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)
vim.keymap.set("n", "<leader>pR", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", silent)
vim.keymap.set("n", "<leader>pd", "<cmd>lua require('telescope').extensions.git_worktree.delete_worktree()<CR>", silent)
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
