return {
  url = 'https://gitlab.com/schrieveslaach/sonarlint.nvim',
  ft = { 'javascript', 'typescript' },
  dependencies = {
    'mfussenegger/nvim-jdtls',
  },
  config = function()
    require('sonarlint').setup {
      server = {
        cmd = {
          'sonarlint-language-server',
          '-stdio',
          '-analyzers',
          vim.fn.expand '$MASON/share/sonarlint-analyzers/sonarjs.jar',
        },
      },
      filetypes = {
        'javascript',
        'typescript',
      },
      settings = {
        sonarlint = {
          rules = {
            ['typescript:S6019'] = { level = 'on' },
            ['typescript:S6035'] = { level = 'on' },
            ['typescript:S2933'] = { level = 'on' },
            ['typescript:S1607'] = { level = 'on' },
            ['typescript:S6079'] = { level = 'on' },
          },
        },
      },
    }
  end,
}
