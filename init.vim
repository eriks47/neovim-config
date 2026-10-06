lua << END

vim.api.nvim_command("hi Normal guibg=#1e1f1f")

require("options")
require("plugins")
require("globals")
require("colorscheme")
require("autocommands")
require("neovide")
-- require("lsp")

require("generate").setup {}

require('lualine').setup {
options = {
theme = "auto",
}
}
require("bufferline").setup{
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = false
      }
    }
  }
}

require("ibl").setup {
  enabled = true,
  whitespace = {SPACE},
  indent = {
    char = "·",
    smart_indent_cap = true,
    priority = 2,
  },
  scope = {
    enabled = false,
  }
}
require('gitsigns').setup()
-- require('marks').setup{}
require("nvim-autopairs").setup {}
require('nvim-web-devicons').set_icon {

glsl = {
    icon = "󰆧",
    color = "#ebdbb2",
    cterm_color = "65",
    name = "glsl"
},
vert = {
    icon = "󰆧",
    color = "#ebdbb2",
    cterm_color = "65",
    name = "glsl"
},
frag = {
    icon = "󰆧",
    color = "#ebdbb2",
    cterm_color = "65",
    name = "glsl"
},
c = {
    icon = "󰙱",
    color = "#d3869b",
    cterm_color = "65",
    name = "C"
},
h = {
    icon = "",
    color = "#ebdbb2",
    cterm_color = "65",
    name = "h"
},
hpp = {
    icon = "",
    color = "#ebdbb2",
    cterm_color = "65",
    name = "Hpp"
},
cpp = {
    icon = "󰙲",
    color = "#d3869b",
    cterm_color = "65",
    name = "Cpp"
},
dockerfile = {
    icon = "󰡨",
    color = "#0192e7",
    name = "dockerfile"
},
docker = {
    icon = "󰡨",
    color = "#0192e7",
    name = "docker"
},
shell = {
    icon = "",
    name = "shell"
},
BUILD = {
    icon = "",
    color = "#43a047",
    name = "BUILD"
},
WORKSAPCE = {
    icon = "",
    color = "#43a047",
    name = "WORKSPACE"
},
TODO = {
    icon = "",
    color = "#43c047",
    name = "TODO"
},
}

require("nvim-treesitter.configs").setup {
highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
},
indent = {
},
}
local ts_utils = require("nvim-treesitter.ts_utils")
ts_utils.is_in_node_range = vim.treesitter.is_in_node_range

require("FTerm").setup({
border = "rounded"
})

require("nvim-tree").setup({
git = {
    enable = false
},
renderer = {
    icons = {
        padding = " ",
        glyphs = {
            default = " ",
            symlink = " ",
            bookmark = " ",
            modified = "● ",
            folder = {
                arrow_closed = "",
                arrow_open = "",
                default = " ",
                open = " ",
                empty = " ",
                empty_open = " ",
                symlink = " ",
                symlink_open = " ",
            }
        },
    },
},
})
require("alpha").setup(require'alpha.themes.startify'.config)
require("nvim-web-devicons").set_default_icon(' ', '#6d8086')

local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")
require("telescope").setup({
defaults = {
    file_ignore_patterns = {
        "Build",
        "build",
        "vcpkg_installed",
        "temp.txt",
        ".cache"
    }
},
pickers = {
    man_pages = { sections = {"1", "2", "3"} }
},
extensions = {
    coc = {
        theme = 'dropdown',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
},
})
require('telescope').load_extension('coc')

END

hi Conceal guibg=NONE

" Other

" Bindings
let mapleader = " "

nnoremap <F3> :TSHighlightCapturesUnderCursor <CR>
nnoremap <silent> <F2>  :let @/ = "" <CR>

hi FloatBorder guibg=NONE
hi MarkSignNumHL guibg=NONE guifg=NONE
hi link MarkSignHL GruvboxGreen
" hi EndOfBuffer guifg=#1e1f1f

inoremap jj <ESC>
nnoremap <leader>d :call CocActionAsync('doHover')<CR>
nnoremap <A-a> :lua require("FTerm").open() <CR>
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gf <Plug>(coc-fix-current)

" Add the ability to follow links
" if a link is yanked then `gl` will open it in a browser
nnoremap <silent> gl :call system("brave " . @") <CR>

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
tnoremap <A-d> <C-\><C-N><C-w>:bd!<CR>
tnoremap <C-a> <C-\><C-n>:bd! <CR>
tnoremap <A-a> <C-\><C-n>:lua require("FTerm").close() <CR>
tnoremap <A-n> <C-\><C-n>:bn<CR>
tnoremap <A-p> <C-\><C-n>:bp<CR>
nnoremap <A-f> <cmd>Telescope find_files<CR>
nnoremap <A-e> <cmd>Telescope coc diagnostics<CR>
nnoremap <A-r> <cmd>Telescope live_grep<CR>
nnoremap <A-m> <cmd>lua require("telescope.builtin").man_pages()<cr>

inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-c> /*  */<ESC>hhha

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-n> :bn<cr>
nnoremap <A-p> :bp<cr>
nnoremap <A-d> :bd<cr>
nnoremap <A-f> <CMD>Telescope find_files<CR>
nnoremap <A-m> <CMD>Telescope man_pages<CR>
nnoremap <A-c> <CMD>Telescope colorscheme<CR>
nnoremap <A-q> <CMD>NvimTreeToggle<CR>
nnoremap <A-s> :CocCommand clangd.switchSourceHeader<CR>
nnoremap <A-x> <CMD>bd<CR>
nnoremap <leader>f <C-w>w
nnoremap <leader>r <Plug>(coc-rename)

command -nargs=+ Compile new | 0read!<args>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! CleanUpUI()
    " hi SignColumn guibg=NONE
    " Note: to set a group bold or italic use gui=bold / gui=italic

    " if para
    " hi EndOfBuffer guibg=NONE guifg=#000000
    
    hi LineNr guibg=NONE
    " hi CursorLineNr guibg=NONE guifg=#ffdd33
    hi CursorLineNr guifg=#6d6d6d
    hi Visual guifg=NONE guibg=#264F79
     
    " if gruvbox
    " hi CursorLineNr guifg=#ebdbb2

    hi Paren cterm=none ctermbg=green ctermfg=blue

    hi Conceal guibg=NONE
    " hi LineNr guifg=#458588
endfunction

inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
       \ CheckBackspace() ? "\<TAB>" :
       \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" let &stc=' %s %=%l  '
autocmd BufNewFile,BufRead WORKSPACE set filetype=python
autocmd BufNewFile,BufRead BUILD set filetype=python
autocmd BufNewFile,BufRead *.s set filetype=asm
autocmd BufNewFile,BufRead *.tmpl set filetype=html
autocmd BufNewFile,BufRead *.blade.php set filetype=html
autocmd BufNewFile,BufRead *.ino set filetype=cpp

" autocmd BufWritePost *.{cpp,hpp} silent :!clang-format -i --style='{BasedOnStyle: Microsoft, ColumnLimit: 80, AccessModifierOffset: -4}' %
autocmd BufWritePost *.{c,h} silent :!clang-format -i % --style='{BasedOnStyle: Chromium, IndentWidth: 4, SortIncludes: false}'
autocmd BufWritePost *.go silent :!gofmt -w -s %
autocmd BufWritePost *.rs silent :!rustfmt --edition 2024 %
autocmd BufWritePost *.py silent :!autopep8 -i %
autocmd BufWritePost *.{ts,js,jsx,tsx} silent :!prettier -w %
" autocmd BufWritePost *.go silent :!gofmt -w -s % && goimports-reviser -output file %

" autocmd VimLeave * :!set_font $TERM_FONT
autocmd CursorHold * silent call CocActionAsync('highlight')

" autocmd BufWritePost *.lua silent :!stylua --indent-width 2 %

if has('nvim') && exists('g:neovide')
  call coc#rpc#stop()
endif

" colorscheme gruvbox
set statuscolumn=%s%4l%=
let g:vim_json_syntax_conceal = 0

" copilot
" imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true
