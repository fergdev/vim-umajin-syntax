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
syntax region umajinStringQuot start=/"/ skip=/\\"/ end=/"/
syntax region umajinStringApos start=/'/ skip=/\\'/ end=/'/
syntax region umajinStringBack start=/`/ skip=/\\`/ end=/`/

 
" keywords
syntax keyword umajinKeyword constant 
syntax keyword umajinKeyword const
syntax keyword umajinKeyword define
syntax keyword umajinKeyword end
syntax keyword umajinKeyword include
syntax keyword umajinKeyword include_once
syntax keyword umajinKeyword if
syntax keyword umajinKeyword else
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

" Complex types
syntax keyword umajinComplexTypes object
syntax keyword umajinComplexTypes group
syntax keyword umajinComplexTypes list
syntax keyword umajinComplexTypes timer
syntax keyword umajinComplexTypes map

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
syntax match umajinOperators /[^\/]\/[^\/]/
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

"syntax match umajinNumber "\v<\d+>"
"syntax match umajinNumber "\v<\d+\.\d+>"
"syntax match umajinNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
"syntax match umajinNumber "\v<0x\x+([Pp]-?)?\x+>"
"syntax match umajinNumber "\v<0b[01]+>"
"syntax match umajinNumber "\v<0o\o+>"

highlight link umajinOperators Type 
highlight link umajinKeyword Keyword
highlight link umajinPrimatives Type
highlight link umajinConstants Constant
highlight link umajinStringQuot String
highlight link umajinStringApos String
highlight link umajinStringBack String
highlight link umajinNumber Number
highlight link umajinSingleComment Comment
highlight link umajinMultiComment Comment
highlight link umajinComplexTypes StorageClass
