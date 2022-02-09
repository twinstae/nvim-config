set tabstop=2
set shiftwidth=2
set expandtab

inoremap qw <Esc>|
nnoremap <F10>r :w <Enter> :! cargo test <Enter>|
nnoremap <F2> :UltiSnipsEdit

nnoremap h h| xnoremap h h|
nnoremap n j| xnoremap n j|
nnoremap e k| xnoremap e k| 
nnoremap i l| xnoremap i l|
nnoremap <C-W>i <C-W>l

nnoremap l b| xnoremap l b| 
nnoremap L B| xnoremap L B|
nnoremap u e| xnoremap u e|
nnoremap U E| xnoremap U E|
nnoremap y w| xnoremap y w|
nnoremap Y W| xnoremap Y W|
cnoremap <C-L> <C-Left>|
cnoremap <C-Y> <C-Right>|

nnoremap s i|
nnoremap S I|
nnoremap t a|
nnoremap T A|

nnoremap w c|
nnoremap W C|
nnoremap ww cc|

nnoremap c y|xnoremap c y|
nnoremap v p|
nnoremap C yy|
nnoremap V P|
nnoremap gv gp|
nnoremap gV gP|

nnoremap z u|
nnoremap gz U|
nnoremap Z <C-R>|

nnoremap a v|
nnoremap A V|
nnoremap ga gv|

nnoremap p t|
nnoremap P T|
nnoremap b ;|
nnoremap B ,|
nnoremap k n|
nnoremap K N|

onoremap r i|

nnoremap j z|
nnoremap jn zj| 
nnoremap je zk|

call plug#begin('~/.config/nvim/plugged')

Plug 'jacoborus/tender.vim' " 색깔 스키마
Plug 'dikiaap/minimalist'

Plug 'preservim/tagbar' " a class outline viewer
Plug 'SirVer/ultisnips' " 스닙챗
Plug 'mlaursen/vim-react-snippets' " react 스닙챗

Plug 'neoclide/coc.nvim', {'branch': 'release'} " 노드 js 랭귀지 서버

Plug 'rust-lang/rust.vim' " 러스트지원
Plug 'vim-syntastic/syntastic' " Syntastic is a syntax checking plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " 자동완성

Plug 'euclidianAce/BetterLua.vim' " 루아 문법 강조 Lua

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript' "타입스크립트 Typescript

Plug 'evanleck/vim-svelte', {'branch': 'main'} " 스벨트 svelte

Plug 'rescript-lang/vim-rescript' " Rescript 공식 지원

Plug 'elixir-editors/vim-elixir' " Elixir

Plug 'udalov/kotlin-vim' " Kotlin

Plug 'Olical/conjure', {'tag': 'v4.19.0'} " 클로저 Clojure
Plug 'Olical/aniseed' " Fennel list in lua
Plug 'tpope/vim-surround' " edit surround 쉽게
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'p00f/nvim-ts-rainbow' " 무지개 빛 괄호들
Plug 'luochen1990/rainbow' "무지개 빛 괄호들

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " 파일 트리

Plug 'antoinemadec/FixCursorHold.nvim' " 커서 홀드 에러 디버그
Plug 'ctrlpvim/ctrlp.vim' " 파일 검색
Plug 'easymotion/vim-easymotion' " 쉬운 텍스트 이동
Plug 'bling/vim-airline' " 탭 라인 커스텀

" Plug 'jbyuki/instant.nvim' " Vim 공유 편집
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " 마크다운 프리뷰

Plug 'floobits/floobits-neovim' " 공유 편집

Plug 'github/copilot.vim' " 코파일럿
call plug#end()

" chadtree
nnoremap <leader>v <cmd>CHADopen<cr>


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']

" deoplete
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" coc
set hidden
set updatetime=1000

autocmd FileType python let b:coc_root_patterns = ['__pycache__', '.git', '.env']
set sessionoptions+=globals

xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gt <Plug>(coc-type-definitoin)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)

nmap <leader>qf  <Plug>(coc-fix-current)

nmap <leader>dn <Plug>(coc-diagnostic-next)
nmap <leader>dp <Plug>(coc-diagnostic-prev)

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1

syntax on

" rust-lang
syntax enable
filetype plugin on

" color scheme
set number
set t_Co=256
set cursorline

if (has("termguicolors"))
 set termguicolors
endif

colorscheme minimalist
let g:airline_theme='tender'

let g:rainbow_active = 1

function! NvimRepl()
  terminal
  syntax on
  set syntax=clojure
  call feedkeys("lein repl\<Cr>\<c-\>\<c-n>")
endfunction

" easymotion
"map <Leader>ef <Plug>(easymotion-f)
"map eF <Plug>(easymotion-F)

" jsx-typescript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" instant
let g:instant_username = "stelo"

" ctrlp
let g:ctrlp_map = '<c-r>'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' "Ignore node_modules

" prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" copilot
imap <silent><script><expr> <C-I> copilot#Accept("\<CR>")
