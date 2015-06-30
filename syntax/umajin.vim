" Vim syntax file
" Language : Umajin
" Maintainer: Fergus Hewson
" Latest revision: 29/06/2015
"
if exists("b:current_syntax")
    finish
endif

" Keywords 
syntax keyword umajinkeyword define instance method end
syntax keyword umajinkeyword if elseif loop while return

highlight link potionKeyword Keyword

