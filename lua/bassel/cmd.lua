-- Define the function first
function SetVimPresentationMode()
  vim.api.nvim_buf_set_keymap(0, 'n', '<Right>', ':n<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(0, 'n', '<Left>', ':N<CR>', { noremap = true, silent = true })
end

-- Call the function using an autocmd
vim.cmd([[
  augroup VimPresentationMode
    autocmd!
    autocmd BufNewFile,BufRead *.vpm call v:lua.SetVimPresentationMode()
  augroup END
]])

function FindExecuteCommand()
    local line = vim.fn.search('!!:.*')
    if line > 0 then
        local command = vim.fn.substitute(vim.fn.getline(line), "\\v!!:", "", "")
        vim.fn.system("silent " .. command)
        vim.cmd("normal! gg0")
        vim.cmd("redraw")
    end
end

