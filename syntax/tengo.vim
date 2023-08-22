" Vim syntax file
" Language:	Tengo
" Maintainer:	E Sequeira <raised-vestals-0g@icloud.com>
" URL: https://github.com/geseq/vim-tengo

if exists('b:current_syntax')
  finish
endif

syn case match

" Folding
syn region      FoldingBrace        start="{" end="}" transparent fold
syn region      FoldingParen        start='(' end=')' transparent fold

" Interpreter directive
syn match       HashBang            "\%1l^#!.*"
hi def link     HashBang            PreProc

" Comments
syn region      CommentBlock        start="/\*" end="\*/"
syn region      CommentBlock        start="//" end="$"

hi def link     CommentBlock        Comment

" Interpreted strings
syn region      InterpString        start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region      InterpString        start=+`+ skip=+\\\\\|\\"+ end=+`+
hi def link     InterpString        string

" Raw strings
syn region      RawString           start=+'+ skip=+\\\\\|\\'+ end=+'+
hi def link     RawString           character

" Built-in functions
syn keyword     BuiltinFuncs        format len copy append delete splice type_name
syn keyword     BuiltinFuncs        string int bool float char bytes time error range
syn keyword     BuiltinFuncs        is_string is_int is_bool is_float is_char is_bytes is_error
syn keyword     BuiltinFuncs        is_undefined is_function is_callable is_array is_immutable_array
syn keyword     BuiltinFuncs        is_map is_immutable_map is_iterable is_time

hi def link     BuiltinFuncs        Keyword


" Functions
syn match       FuncDecl            /\<func\>/
hi def link     FuncDecl            Type

" Floating point
syn match       FloatLit            "\<\d\+\.\d*\([Ee][-+]\d\+\)\?\>"
syn match       FloatLit            "\<\.\d\+\([Ee][-+]\d\+\)\?\>"
syn match       FloatLit            "\<\d\+[Ee]-\d\+\>"

hi def link     FloatLit            Float

" Integers
syn match       Integers            "\<0x\x\+\>"
syn match       Integers            "\<0\o\+\>"
syn match       Integers            "\<\d\+\([Ee]\d\+\)\?\>"
syn match       Integers            "\<\d\+\([Ee]+\d\+\)\?\>"

hi def link     Integers            Number

" Constants
syn keyword     Constants           true false undefined
hi def link     Constants           Keyword

" Keywords
syn keyword     CtrlWords           return break continue
syn keyword     CondWords           if else
syn keyword     Directive           import export
syn keyword     RepeatWords         for in
syn keyword     Declaration         var error immutable

hi def link     CtrlWords           Statement
hi def link     CondWords           Conditional
hi def link     Directive           Statement
hi def link     RepeatWords         Repeat
hi def link     Declaration         Keyword

" Function call
syntax match    FuncCall            /\<\K\k*\ze(/
hi def link     FuncCall            Keyword

let b:current_syntax = 'tengo'

