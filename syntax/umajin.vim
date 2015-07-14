" Vim syntax file
" Language : Umajin
" Maintainer: Fergus Hewson
" Latest revision: 29/06/2015
"
if exists("b:current_syntax")
    finish
endif

" Comments 
syntax match umajinSingleComment /\/\/.*/
syntax region umajinMultiComment start=/\/\*/ end=/\*\//

" Strings
syntax region umajinStringQuot start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region umajinStringApos start=/\v'/ skip=/\v\\./ end=/\v'/
syntax region umajinStringBack start=/\v`/ skip=/\v\\./ end=/\v`/

 
" keywords
syntax keyword umajinKeyword constant 
syntax keyword umajinKeyword const
syntax keyword umajinKeyword define
syntax keyword umajinKeyword end
syntax keyword umajinKeyword include
syntax keyword umajinKeyword include_once
syntax keyword umajinKeyword if
syntax keyword umajinKeyword elseif
syntax keyword umajinKeyword loop
syntax keyword umajinKeyword exitloop
syntax keyword umajinKeyword method
syntax keyword umajinKeyword override
syntax keyword umajinKeyword returns
syntax keyword umajinKeyword return
syntax keyword umajinKeyword raise
syntax keyword umajinKeyword instance
syntax keyword umajinKeyword switch
syntax keyword umajinKeyword case
syntax keyword umajinKeyword property
syntax keyword umajinKeyword or
syntax keyword umajinKeyword xor
syntax keyword umajinKeyword and
syntax keyword umajinKeyword not
syntax keyword umajinPrimatives string
syntax keyword umajinPrimatives bool
syntax keyword umajinPrimatives int
syntax keyword umajinPrimatives int8
syntax keyword umajinPrimatives int16
syntax keyword umajinPrimatives int32
syntax keyword umajinPrimatives int64
syntax keyword umajinPrimatives uint
syntax keyword umajinPrimatives uint8
syntax keyword umajinPrimatives uint16
syntax keyword umajinPrimatives uint32
syntax keyword umajinPrimatives uint64
syntax keyword umajinPrimatives real
syntax keyword umajinPrimatives float
syntax keyword umajinPrimatives real32
syntax keyword umajinPrimatives double
syntax keyword umajinPrimatives real64

" Constants
syntax keyword umajinConstants true
syntax keyword umajinConstants false
syntax keyword umajinConstants null

"Operators
syntax match umajinOperators /||/
syntax match umajinOperators /&&/
syntax match umajinOperators /|/
syntax match umajinOperators /\^/
syntax match umajinOperators /&/
syntax match umajinOperators /==/
syntax match umajinOperators /!=/
syntax match umajinOperators /</
syntax match umajinOperators /<=/
syntax match umajinOperators />/
syntax match umajinOperators />=/
syntax match umajinOperators /<</
syntax match umajinOperators />>/
syntax match umajinOperators /+/
syntax match umajinOperators /-/
syntax match umajinOperators /*/
syntax match umajinOperators /\//
syntax match umajinOperators /%/
syntax match umajinOperators /++/
syntax match umajinOperators /--/
syntax match umajinOperators /!/
syntax match umajinOperators /\~/
syntax match umajinOperators /(/
syntax match umajinOperators /)/
syntax match umajinOperators /{/
syntax match umajinOperators /}/
syntax match umajinOperators /\[/
syntax match umajinOperators /\]/
syntax match umajinOperators /\./
syntax match umajinOperators /=/
syntax match umajinOperators /+=/
syntax match umajinOperators /-=/
syntax match umajinOperators /*=/
syntax match umajinOperators /\/=/
syntax match umajinOperators /%=/
syntax match umajinOperators /\^=/
syntax match umajinOperators /<<=/
syntax match umajinOperators />>=/
syntax match umajinOperators /|=/
syntax match umajinOperators /&=/
syntax match umajinOperators /:/
syntax match umajinOperators /::/
syntax match umajinOperators /;/
syntax match umajinOperators /?/

highlight link umajinSingleComment Type
highlight link umajinMultiComment Type
"highlight link umajinOperators Type 
highlight link umajinKeyword Keyword
highlight link umajinPrimatives Type
highlight link umajinConstants Constant
highlight link umajinStringQuot String
highlight link umajinStringApos String
highlight link umajinStringBack String


