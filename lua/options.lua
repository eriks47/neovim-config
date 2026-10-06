local api = vim.api

local options = {
	"set completeopt=menu,menuone,noselect",
	"set number",
	"set nomodeline",
	"set ruler",
	"set title",
	"set cmdheight=1",
	"set noshowcmd",
	"set noshowmode",
	"set termguicolors",
	"set nowrap",
	"set hidden",
	"set updatetime=300",
	"set signcolumn=number",
	"set signcolumn=yes",
	"set nocompatible",
	'set t_md="',
	"set scrolloff=5",

	"syntax on",
	"filetype plugin indent on",
	"filetype plugin on",
	"set background=dark",

	-- Code indenttation
	"set autoindent",
	"set smartindent",
	"set cindent",
	"set smarttab",
	"set tabstop=4",
	"set shiftwidth=4",
	"set expandtab",

	-- Prevent coc.nvim errors
	"set nobackup",
	"set nowritebackup",

	"set conceallevel=1",

	"set shell=fish",
	"set encoding=utf-8",
	'set t_BE="',
	--"set colorcolumn=80",
	"set numberwidth=7",
	"set statuscolumn=%s%4l%=",
	-- "set mouse=",
}

for _, val in pairs(options) do
	api.nvim_command(val)
end
