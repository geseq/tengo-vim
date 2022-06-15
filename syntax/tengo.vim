" Vim syntax file
" Language:	Tengo
" Maintainer:	E Sequeira <raised-vestals-0g@icloud.com>
" URL: https://github.com/geseq/vim-tengo

if exists('b:current_syntax')
  finish
endif

syn case match

" Folding
syn region      foldingBrace        start="{" end="}" transparent fold
syn region      foldingParen        start='(' end=')' transparent fold

" Comments
syn region      commentBlock        start="/\*" end="\*/"
syn region      commentBlock        start="//" end="$"

hi def link     commentBlock        Comment

" Interpreted strings
syn region      interpString        start=+"+ skip=+\\\\\|\\"+ end=+"+
hi def link     interpString        string

" Raw strings
syn region      rawString           start=+'+ skip=+\\\\\|\\'+ end=+'+
hi def link     rawString           character


let b:current_syntax = 'tengo'
