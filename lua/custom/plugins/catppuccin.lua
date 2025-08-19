return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    local builtin = require 'catppuccin'
    builtin.options.custom_highlights = function(colors)
      return {
        Comment = { bg = colors.red },
      }
    end
  end,
  init = function(_, _)
    vim.cmd.colorscheme 'catppuccin'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' })
  end,
}
