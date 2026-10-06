-- vim.cmd [[autocmd Filetype *.lua setlocal shiftwidth=2 tabstop=2]]

-- autocmd BufWritePost *.c,*.h,*.cpp,*.hpp silent :!clang-format -i '--style={BasedOnStyle: Microsoft, IndentWidth: 4}' %
-- autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx silent :CocCommand prettier.forceFormatDocument

local api = vim.api

api.nvim_create_autocmd("VimLeavePre", {
	pattern = "*",
	callback = function()
		api.nvim_command("set guicursor=a:ver10-blinkon30")
	end,
})

api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		api.nvim_command("set guicursor=i:ver10-blinkon30")
	end,
})

-- Treat asm like nasm
api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.asm",
	callback = function()
		api.nvim_command("set filetype=nasm")
	end,
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.yml",
	callback = function()
		api.nvim_command("set filetype=yaml")
	end,
})

-- Glsl
api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.{vert,frag}",
	callback = function()
		api.nvim_command("set filetype=glsl")
	end,
})

-- Autocompile latex files on save
api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.tex",
	callback = function()
		api.nvim_command("silent :!pdflatex %")
	end,
})

api.nvim_create_autocmd("Filetype", {
	pattern = "nasm",
	callback = function()
		api.nvim_command("setlocal expandtab tabstop=8 shiftwidth=8 softtabstop=8")
	end,
})

vim.cmd([[autocmd VimEnter * call CleanUpUI()]])

-- Automaticaly insert some boilerplate
vim.cmd([[autocmd BufNewFile *.hpp :call nvim_put(['#pragma once', ''], 'l', v:false, v:true)]])
vim.cmd(
	[[autocmd BufNewFile *.{glsl,vert,frag} :call nvim_put(['#version 430 core', '', 'void main()', '{', '', '}'], 'l', v:false, v:true)]]
)
api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.sh",
	callback = function()
		local api = vim.api
		api.nvim_put({ "#!/bin/sh", "" }, "l", false, true)
	end,
})
vim.cmd(
	[[autocmd BufNewFile *.{} :call nvim_put(['#version 430 core', '', 'void main()', '{', '', '}'], 'l', v:false, v:true)]]
)

-- Disable anoying indentation jumps when writing namepsaces
vim.cmd([[autocmd FileType cpp setlocal cinoptions+=L0]])
vim.cmd([[autocmd BufEnter *([1-9]*) nested :only]])
