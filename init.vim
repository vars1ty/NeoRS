call plug#begin()
" https://github.com/neovim/nvim-lspconfig
Plug 'neovim/nvim-lspconfig'
" https://github.com/williamboman/nvim-lsp-installer
Plug 'williamboman/nvim-lsp-installer'
" https://github.com/ray-x/lsp_signature.nvim
Plug 'ray-x/lsp_signature.nvim'
" https://github.com/hrsh7th/nvim-cmp
Plug 'hrsh7th/nvim-cmp'
" https://github.com/L3MON4D3/LuaSnip
Plug 'L3MON4D3/LuaSnip'
" https://github.com/saadparwaiz1/cmp_luasnip
Plug 'saadparwaiz1/cmp_luasnip'
" https://github.com/hrsh7th/cmp-nvim-lua
Plug 'hrsh7th/cmp-nvim-lua'
" https://github.com/hrsh7th/cmp-nvim-lsp
Plug 'hrsh7th/cmp-nvim-lsp'
" https://github.com/hrsh7th/cmp-buffer
Plug 'hrsh7th/cmp-buffer'
" https://github.com/hrsh7th/cmp-path
Plug 'hrsh7th/cmp-path'
" https://github.com/windwp/nvim-autopairs
Plug 'windwp/nvim-autopairs'
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
" https://github.com/hrsh7th/cmp-cmdline
Plug 'hrsh7th/cmp-cmdline'
" https://github.com/kyazdani42/nvim-web-devicons/
Plug 'kyazdani42/nvim-web-devicons/'
" https://github.com/lewis6991/impatient.nvim
Plug 'lewis6991/impatient.nvim'
" https://github.com/kyazdani42/nvim-tree.lua
Plug 'kyazdani42/nvim-tree.lua'
" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" https://github.com/romgrk/barbar.nvim
Plug 'romgrk/barbar.nvim'
" https://github.com/nvim-lua/plenary.nvim
Plug 'nvim-lua/plenary.nvim'
" https://github.com/stevearc/dressing.nvim
Plug 'stevearc/dressing.nvim'
" https://github.com/antoinemadec/FixCursorHold.nvim
Plug 'antoinemadec/FixCursorHold.nvim'
" https://github.com/j-hui/fidget.nvim
Plug 'j-hui/fidget.nvim'
" https://github.com/akinsho/toggleterm.nvim
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
" https://github.com/tamton-aquib/staline.nvim
Plug 'tamton-aquib/staline.nvim'
" https://github.com/simrat39/rust-tools.nvim
Plug 'mrcjkb/rustaceanvim'
" https://github.com/simrat39/rust-tools.nvim
" Plug 'simrat39/rust-tools.nvim'
" Themes
" https://github.com/joshdick/onedark.vim
Plug 'joshdick/onedark.vim'
call plug#end()

" Allow for auto-completion
set completeopt=menu,menuone,noselect
" Allow for proper terminal colors
set termguicolors
" Indenting
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Allow for mouse interaction in all modes
set mouse=a

" Binds
"                  Space+ca
nnoremap <silent> <Space>ca     :lua vim.lsp.buf.code_action()             <CR>
"                  Space+em
nnoremap <silent> <Space>em     :RustLsp expandMacro                       <CR>
"                  Space+er
nnoremap <silent> <Space>er     :RustLsp explainError                      <CR>
"                  Ctrl+Space      
nnoremap <silent> <C-Space>     :lua vim.lsp.buf.hover()                   <CR>
"                  Space+fm
nnoremap <silent> <Space>fm     :lua vim.lsp.buf.format()         <CR>
"                  Space+def
nnoremap <silent> <Space>def    :lua vim.lsp.buf.definition()              <CR>
"                  Ctrl+S
nnoremap <silent> <C-S>         :w                                         <CR>
"                  Ctrl+Z
nnoremap <silent> <C-Z>         :undo                                      <CR>
"                  CTRL+Y
nnoremap <silent> <C-Y>         :redo                                      <CR>
"                  Space+e
nnoremap <silent> <Space>e      :NvimTreeToggle                            <CR>
"                  CTRL+ALT+LeftArrow
nnoremap <silent> <C-A-Left>    :BufferPrevious                            <CR>
"                  CTRL+ALT+RightArrow
nnoremap <silent> <C-A-Right>   :BufferNext                                <CR>
"                         CTRL+0/9
nnoremap <silent> <C-0>         :BufferGoto 0                              <CR>
nnoremap <silent> <C-1>         :BufferGoto 1                              <CR>
nnoremap <silent> <C-2>         :BufferGoto 2                              <CR>
nnoremap <silent> <C-3>         :BufferGoto 3                              <CR>
nnoremap <silent> <C-4>         :BufferGoto 4                              <CR>
nnoremap <silent> <C-5>         :BufferGoto 5                              <CR>
nnoremap <silent> <C-6>         :BufferGoto 6                              <CR>
nnoremap <silent> <C-7>         :BufferGoto 7                              <CR>
nnoremap <silent> <C-8>         :BufferGoto 8                              <CR>
nnoremap <silent> <C-9>         :BufferGoto 9                              <CR>
"                  Space+close
nnoremap <silent> <Space>close  :BufferClose                               <CR>
"                  Space+ff
nnoremap <silent> <Space>ff     :Telescope find_files                      <CR>
"                  Space+rn
nnoremap <silent> <Space>rn     :lua vim.lsp.buf.rename()                  <CR>
"                  X
nnoremap <silent>  x            :d                                         <CR>
" NORMIE           Ctrl+C
vnoremap <silent> <C-C>         "+y
" NORMIE           Ctrl+X
vnoremap <silent> <C-X>         "+ygv<DEL>

"       Idle in INSERT => Show hover background popup (if available)
autocmd CursorHoldI *  :lua vim.lsp.buf.hover()

" Makes `d` and `dd` actually delete the line, rather than cutting it.
nnoremap d "_d
vnoremap d "_d

" Font to use
set guifont=Operator\ Mono:h11

" Enable Line Numbers
set number

highlight Normal guibg='#0A0A0A' guifg=White

lua << EOF
require("cmp-conf")
require("treesitter-conf")
require("devicons-conf")
require("lsp-signature-conf")
require("staline-conf")
require("fidget").setup{}
require("impatient")
require("nvim-autopairs").setup{}
require("nvim-tree").setup{}
require("toggleterm-conf")
require("rustaceanvim")
EOF

" Cursor Hold Update Time
let g:cursorhold_updatetime = 1000

" Allow for system clipboard access
set clipboard+=unnamedplus

" OneDark Color Overrides
let g:onedark_color_overrides = {
\ "background":  {"gui": "#0A0A0A00", "cterm": "235", "cterm16": "0" },
\ "menu_grey":   {"gui": "#12121200", "cterm": "235", "cterm16": "0" },
\ "cursor_grey": {"gui": "#121212", "cterm": "235", "cterm16": "0" }
\}

" Color Scheme to be used
colorscheme onedark
