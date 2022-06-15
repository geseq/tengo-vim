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

let b:current_syntax = 'tengo'
