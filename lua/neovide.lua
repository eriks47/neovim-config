if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
	vim.o.guifont = "Consolas:h13"
	vim.api.nvim_command("set guicursor=a:block-blinkon30")
end
