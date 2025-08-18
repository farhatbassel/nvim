return {
  { -- Autoformat
    'stevearc/conform.nvim',
    ft = { 'typescript', 'html', 'lua', 'javascript', 'css', 'scss' },
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
      },
    },
    config = function(_, opts)
      local path = vim.api.nvim_buf_get_name(0)
      if string.match(path, 'Cockpit') then
        opts.formatters_by_ft = {
          javascript = { 'prettier' },
          typescript = { 'prettier' },
          html = { 'prettier' },
        }
      end
      require('conform').setup(opts)
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
