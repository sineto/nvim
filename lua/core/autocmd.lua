local api = vim.api

api.nvim_create_autocmd('BufReadPost', {
    group = api.nvim_create_augroup('RememberCursorPosition', {clear = true}),
    command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]],
})