set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
syntax on

" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
"  leaderを変更
let mapleader = "\<Space>"

" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>  " init.vim呼び出し
nnoremap <Space>s :source $MYVIMRC<CR>  " init.vim読み込み
nnoremap <Space>w :<C-u>w<CR>           " ファイル保存
" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k

" Insert Mode
inoremap <silent> jj <ESC>
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
