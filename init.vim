"  _   _                 _           
" | \ | | ___  _____   _(_)_ __ ___  
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
" | |\  |  __/ (_) \ V /| | | | | | |
" |_| \_|\___|\___/ \_/ |_|_| |_| |_|
" *----------------------------------*
" | Author: XuMuK_228                | 
" | Path: ~/.config/nvim/init.vim    |
" *----------------------------------*

" Plugins
call plug#begin() 

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

" Language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'lervag/vimtex'

" UI 
Plug 'ryanoasis/vim-devicons' 
Plug 'goolord/alpha-nvim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
" Plug 'nvim-lualine/lualine.nvim'

" Fs navigation 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jremmen/vim-ripgrep'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

call plug#end()

" UI Enchantments
set completeopt=menu,menuone,noselect
set number
set ruler
set title
set noshowcmd
set noshowmode
set termguicolors
set nowrap
set hidden
set updatetime=300
set signcolumn=number
set signcolumn=yes
set nocompatible
set t_md=
set cursorline
set colorcolumn=80
" set guicursor=a:block-blinkon1
set relativenumber

" Color scheme
let g:gruvbox_bold = 0
let g:gruvbox_invert_selection = 0
let g:gruvbox_contrast_dark = 'medium'

" colorscheme paramount
colorscheme gruvbox
" let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline_theme = 'base16_gruvbox_dark_medium'
let g:gruvbox_material_disable_italic_comment = 1

syntax on
filetype plugin indent on
filetype plugin on
set background=dark

" Color scheme tweaks
" let g:accent_color = 'guifg = #a790d5'
" 
" let g:accent_color = 'guifg=#ffdd33 gui=bold'
" let g:normal_color = 'guifg=#e4e4ef  gui=NONE'
" let g:extra_color = 'guifg=#73c936 gui=NONE'
" 
" execute 'hi Keyword ' . g:accent_color
" execute 'hi Repeat ' . g:accent_color
" execute 'hi Conditional ' . g:accent_color
" execute 'hi Statement ' . g:accent_color
" 
" execute 'hi Normal guibg=#181818 ' . g:normal_color
" execute 'hi Number ' . g:normal_color
" execute 'hi Constant ' . g:normal_color
" execute 'hi Function ' . g:normal_color
" execute 'hi Type ' . g:normal_color
" 
" execute 'hi String ' . g:extra_color
" execute 'hi cCharacter ' . g:extra_color
" execute 'hi cFormat ' . g:extra_color
" execute 'hi Special ' . g:extra_color
" hi Visual guibg=#282828 guifg=NONE
" hi Comment gui=NONE

" Note: to set a group bold or italic use gui=bold / gui=italic

" hi Normal guibg=NONE
hi EndOfBuffer guibg=NONE guifg=#282828
hi Signs guibg=NONE guifg=NONE
hi SignColumn guibg=NONE guifg=NONE
hi CursorLine guibg=NONE
hi LineNr guibg=NONE
" hi CursorLineNr guibg=NONE guifg=#ffdd33
hi CursorLineNr guibg=NONE
 
" if gruvbox
" hi CursorLineNr guifg=#ebdbb2

hi Paren cterm=none ctermbg=green ctermfg=blue

hi SyntasticStyleWarningSign guibg=NONE
hi SyntasticStyleErrorSign guibg=NONE
hi SyntasticWarningSign guibg=NONE guifg=#fabd2f
hi SyntasticErrorSign guibg=NONE guifg=#cc241d

hi CocErrorSign guibg=NONE guifg=#cc241d
hi CocWarningSign guibg=NONE guifg=#fabd2f
hi CocErrorLine guibg=NONE guifg=NONE
hi CocWarningLine guibg=NONE guifg=NONE

" Code indenttation
set autoindent
set smartindent
set cindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Prevent coc.nvim errors
set nobackup
set nowritebackup

" Vimtex
let g:tex_flavor="latex"
let g:vimtex_view_method="zathura"
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Airline
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 0
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0

" Other
set shell=zsh
set encoding=utf-8
set t_BE=

" Bindings
let mapleader = " "

lua << END
require("nvim-tree").setup()
require("alpha").setup(require'alpha.themes.startify'.config)
require('telescope').setup{
      defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = { "node_modules" },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    mappings = {
      n = { ["q"] = require("telescope.actions").close },
    },
  },

  extensions_list = { "themes", "terms" },
}
-- require('lualine').setup {}
require("bufferline").setup{}
END

inoremap jj <ESC>
" inoremap \" \"\"<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

nnoremap <leader>d :call CocActionAsync('doHover')<CR>
" nnoremap <A-a> :bel 12split term://zsh <CR> :startinsert <CR>
nnoremap <A-a> :CocCommand terminal.Toggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
tnoremap <A-d> <C-\><C-N><C-w>:bd!<CR>

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-c> /*  */<ESC>hhha

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-n> :bn<CR>
nnoremap <A-p> :bp<CR>
nnoremap <A-d> :bd<CR>
nnoremap <A-f> <CMD>Telescope find_files<CR>
nnoremap <A-m> <CMD>Telescope man_pages<CR>
nnoremap <A-c> <CMD>Telescope colorscheme<CR>
nnoremap <A-q> <CMD>NvimTreeToggle<CR>

tnoremap <C-a> <C-\><C-n>:bd! <CR>
tnoremap <A-a> <C-\><C-n>:CocCommand terminal.Toggle<CR>

command -nargs=+ Compile new | 0read!<args>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Autocommands
autocmd VimLeave * set guicursor=a:ver25-blinkon0
autocmd BufNewFile,BufRead *.asm set filetype=nasm
autocmd Filetype nasm setlocal expandtab tabstop=8 shiftwidth=8 softtabstop=8
autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd BufWritePost *.c silent :!indent -kr -i8 %
autocmd BufWritePost *.c silent :!clang-format -i --style=Microsoft %
