return {
  'theprimeagen/harpoon',
  config = function()
    Mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>a', Mark.add_file, { desc = 'Harpoon [A]dd' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

    vim.keymap.set('n', '<leader>1', function()
      ui.nav_file(1)
    end, { desc = 'Harpoon toggle [1]' })
    vim.keymap.set('n', '<leader>2', function()
      ui.nav_file(2)
    end, { desc = 'Harpoon toggle [2]' })
    vim.keymap.set('n', '<leader>3', function()
      ui.nav_file(3)
    end, { desc = 'Harpoon toggle [3]' })
    vim.keymap.set('n', '<leader>4', function()
      ui.nav_file(4)
    end, { desc = 'Harpoon toggle [4]' })
    vim.keymap.set('n', '<leader>5', function()
      ui.nav_file(5)
    end, { desc = 'Harpoon toggle [5]' })
    vim.keymap.set('n', '<leader>6', function()
      ui.nav_file(6)
    end, { desc = 'Harpoon toggle [6]' })
  end,
}
