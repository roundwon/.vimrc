set nocompatible

filetype off
set number " line 표시(set nu도 가능)
set autoindent " 자동 들여쓰기
syntax on " 문법 하이라이트 on
set shiftwidth=4 " 자동 공백 채움 시 4칸
set tabstop=4 " tab을 4칸 공백으로
set ignorecase " 검색 시 대소문자 무시
set hlsearch " 검색 시 하이라이트
set fileencodings=utf-8,euc-kr " 파일 저장 인코딩 : utf-8, euc-kr
set fencs=ucs-bom,utf-8,euc-kr " 한글 파일은 euc-kr, 유니코드는 유니코드
set bs=indent,eol,start " backspace 사용가능
set ruler " 상태 표시줄에 커서 위치 표시
set title " 제목 표시
set showmatch " 다른 코딩 프로그램처럼 매칭되는 괄호 보여줌
set wmnu " tab 을 눌렀을 때 자동완성 가능한 목록
colo desert " 블럭 설정시 글자 잘보이는 색상 조합
set noundofile "undofile을 만들지 않습니다.
set guifont=D2Coding:h12

set rtp+=~/.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

" 키 맵핑
let mapleader="," "Leader키를 ,로 바꾼다
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC <CR>",rc 누르면 $MYVIMRC가 왼쪽창에 열림
nnoremap <C-F> :NERDTreeFind "ctrl F로 Nerdtree find 실행
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l "ctrl + hjkl로 창 이동
map <F1> :tabnew<cr>
map <F3> :NERDTreeToggle<cr> " NERDTree
map <F4> :TagbarToggle<cr>
