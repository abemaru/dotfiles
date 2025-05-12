let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <C-S> <Cmd>w
inoremap <silent> <M-k> <Cmd>m .-2==gi
inoremap <silent> <M-j> <Cmd>m .+1==gi
inoremap <C-W> u
inoremap <C-U> u
nnoremap <silent>  h
nnoremap <silent> <NL> j
nnoremap <silent>  k
nnoremap <silent>  l
snoremap <silent>  <Cmd>w
nnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>w
nmap  d
nnoremap <silent>  <Cmd>noh
nnoremap  xT <Cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}
nnoremap  sT <Cmd>TodoTelescope keywords=TODO,FIX,FIXME
nnoremap  st <Cmd>TodoTelescope
nnoremap  xt <Cmd>Trouble todo toggle
nnoremap  cm <Cmd>Mason
nnoremap  fr <Cmd>Telescope oldfiles
nnoremap  fg <Cmd>Telescope git_files
nnoremap  fb <Cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true
nnoremap  : <Cmd>Telescope command_history
nnoremap  , <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  sb <Cmd>Telescope current_buffer_fuzzy_find
nnoremap  sq <Cmd>Telescope quickfix
nnoremap  sR <Cmd>Telescope resume
nnoremap  so <Cmd>Telescope vim_options
nnoremap  sm <Cmd>Telescope marks
nnoremap  sM <Cmd>Telescope man_pages
nnoremap  sl <Cmd>Telescope loclist
nnoremap  sk <Cmd>Telescope keymaps
nnoremap  sj <Cmd>Telescope jumplist
nnoremap  sH <Cmd>Telescope highlights
nnoremap  sh <Cmd>Telescope help_tags
nnoremap  sD <Cmd>Telescope diagnostics
nnoremap  sd <Cmd>Telescope diagnostics bufnr=0
nnoremap  sC <Cmd>Telescope commands
nnoremap  sc <Cmd>Telescope command_history
nnoremap  sa <Cmd>Telescope autocommands
nnoremap  s" <Cmd>Telescope registers
nnoremap  gs <Cmd>Telescope git_status
nnoremap  gc <Cmd>Telescope git_commits
nnoremap <silent>  xq <Cmd>copen
nnoremap <silent>  xl <Cmd>lopen
nnoremap <silent>  fn <Cmd>enew
nnoremap <silent>  l <Cmd>Lazy
nnoremap <silent>  K <Cmd>norm! K
nnoremap <silent>  ur <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent>  bD <Cmd>:bd
nnoremap <silent>  ` <Cmd>e #
nnoremap <silent>  bb <Cmd>e #
nnoremap  xX <Cmd>Trouble diagnostics toggle filter.buf=0
nnoremap  xx <Cmd>Trouble diagnostics toggle
nnoremap  xQ <Cmd>Trouble qflist toggle
nnoremap  xL <Cmd>Trouble loclist toggle
nnoremap  cS <Cmd>Trouble lsp toggle
nnoremap  cs <Cmd>Trouble symbols toggle
nnoremap  sn <Nop>
nnoremap  bl <Cmd>BufferLineCloseLeft
nnoremap  br <Cmd>BufferLineCloseRight
nnoremap  bp <Cmd>BufferLineTogglePin
nnoremap  bP <Cmd>BufferLineGroupClose ungrouped
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
vnoremap <silent> < <gv
vnoremap <silent> > >gv
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap H <Cmd>BufferLineCyclePrev
nnoremap L <Cmd>BufferLineCycleNext
onoremap <silent> <expr> N 'nN'[v:searchforward]
xnoremap <silent> <expr> N 'nN'[v:searchforward]
nnoremap <silent> <expr> N 'nN'[v:searchforward].'zv'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
nnoremap [b <Cmd>BufferLineCyclePrev
nnoremap [B <Cmd>BufferLineMovePrev
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap ]b <Cmd>BufferLineCycleNext
nnoremap ]B <Cmd>BufferLineMoveNext
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> gcO OVcx<Cmd>normal gccfxa<BS>
nnoremap <silent> gco oVcx<Cmd>normal gccfxa<BS>
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
onoremap <silent> <expr> n 'Nn'[v:searchforward]
xnoremap <silent> <expr> n 'Nn'[v:searchforward]
nnoremap <silent> <expr> n 'Nn'[v:searchforward].'zv'
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
snoremap <silent> <C-S> <Cmd>w
nnoremap <silent> <C-S> <Cmd>w
xnoremap <silent> <C-S> <Cmd>w
vnoremap <silent> <M-k> :execute "'<,'>move '<-" . (v:count1 + 1)gv=gv
vnoremap <silent> <M-j> :execute "'<,'>move '>+" . v:count1gv=gv
nnoremap <silent> <M-k> <Cmd>execute 'move .-' . (v:count1 + 1)==
nnoremap <silent> <M-j> <Cmd>execute 'move .+' . v:count1==
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
xnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-W><C-D> d
nnoremap <silent> <C-L> l
inoremap <silent>  <Cmd>w
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>noh
inoremap <silent> , ,u
inoremap <silent> . .u
inoremap <silent> ; ;u
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menu,menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatexpr=v:lua.require'lazyvim.util'.format.formatexpr()
set formatoptions=jcroqlnt
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set helplang=ja
set ignorecase
set jumpoptions=view
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/nix/store/j28bnn9bjn4wf8zlhw3lddfk42p4f0i8-neovim-unwrapped-0.10.2/share/nvim/runtime
set pumblend=10
set pumheight=10
set noruler
set runtimepath=~/.config/nvim,/nix/store/cwmfv7b2bx3ih88kn3lqy3hp3dy1l1jn-vim-pack-dir/pack/myNeovimPackages/start/lazy.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/nvim-snippets,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/cmp-buffer,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/nvim-cmp,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/nvim-lint,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/cmp-nvim-lsp,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/nvim-lspconfig,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/persistence.nvim,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/plenary.nvim,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/telescope.nvim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/mini.pairs,~/.local/share/nvim/lazy/trouble.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/flash.nvim,~/.local/share/nvim/lazy/noice.nvim,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/ts-comments.nvim,~/.local/share/nvim/lazy/mini.ai,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/nvim-treesitter,~/.local/share/nvim/lazy/bufferline.nvim,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/tokyonight.nvim,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/LazyVim,/nix/store/j28bnn9bjn4wf8zlhw3lddfk42p4f0i8-neovim-unwrapped-0.10.2/share/nvim/runtime,/nix/store/j28bnn9bjn4wf8zlhw3lddfk42p4f0i8-neovim-unwrapped-0.10.2/share/nvim/runtime/pack/dist/opt/matchit,/nix/store/j28bnn9bjn4wf8zlhw3lddfk42p4f0i8-neovim-unwrapped-0.10.2/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/cmp-buffer/after,/nix/store/lf8zid0rw8w3v33bj5lavhb8zrppcs9p-lazy-plugins/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after,~/.local/share/nvim/lazy/indent-blankline.nvim/after
set scrolloff=4
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds
set shiftround
set shiftwidth=2
set shortmess=tOCcWoFlIT
set noshowmode
set showtabline=0
set sidescrolloff=8
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=%#lualine_transparent#
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set window=41
set winminwidth=5
" vim: set ft=vim :
