return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function(_, _)
    vim.cmd.colorscheme 'catppuccin'
  end,
}
