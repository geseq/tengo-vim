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

" Built-in functions
syn keyword     builtinFuncs        format len copy append delete splice type_name
syn keyword     builtinFuncs        string int bool float char bytes time error range
syn keyword     builtinFuncs        is_string is_int is_bool is_float is_char is_bytes is_error
syn keyword     builtinFuncs        is_undefined is_function is_callable is_array is_immutable_array
syn keyword     builtinFuncs        is_map is_immutable_map is_iterable is_time

hi def link     builtinFuncs        Keyword

" Functions
syn match       funcDecl            /\<func\>/
hi def link     funcDecl            Type

" Floating point
syn match       floatLit            "\<\d\+\.\d*\([Ee][-+]\d\+\)\?\>"
syn match       floatLit            "\<\.\d\+\([Ee][-+]\d\+\)\?\>"
syn match       floatLit            "\<\d\+[Ee][-+]\d\+\>"

hi def link     floatLit            Float

let b:current_syntax = 'tengo'
