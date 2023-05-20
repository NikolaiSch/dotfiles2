return function()
	vim.cmd([[
        autocmd! User StagehandEnter Goyo
        autocmd! User StagehandLeave Goyo!
    ]])
end
