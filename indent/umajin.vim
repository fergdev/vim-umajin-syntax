" Vim indent file
" Language:    Umajin
" Maintainer:  Fergus Hewosn
" Created:     A long time ago, in a place very far away...
" Last Change: Recently!!!


if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal indentexpr=GetUmajinIndent(v:lnum)
"setlocal indentkeys&
"setlocal indentkeys+==end;,==const,==type,==var,==begin,==repeat,==until,==for
"setlocal indentkeys+==program,==function,==procedure,==object,==private
"setlocal indentkeys+==record,==if,==else,==case

if exists("*GetUmajinIndent")
	finish
endif


function! s:GetPrevNonCommentLineNum(line_num)

	" Skip lines starting with a comment
	let SKIP_LINES = '^\s*\(\((\*\)\|\(\*\ \)\|\(\*)\)\|{\|}\)'

	let nline = a:line_num
	while nline > 0
		let nline = prevnonblank(nline-1)
		if getline(nline) !~? SKIP_LINES
			break
		endif
	endwhile

	return nline
endfunction


function! GetUmajinIndent(line_num)
	if a:line_num == 0
		return 0
	endif

	let this_codeline = getline( a:line_num )

	" If in the middle of a three-part comment
	if this_codeline =~ '^\s*\*'
		return indent( a:line_num )
	endif

	let prev_codeline_num = s:GetPrevNonCommentLineNum( a:line_num )
	let prev_codeline = getline( prev_codeline_num )
	let indnt = indent( prev_codeline_num )

	if this_codeline =~ '^\s*\<\(include\|include_once\|define\)\>'
		return 0
	endif

	" If the previous line was an indenting keyword then indent once...
    if prev_codeline =~ '^\s*\<\(define\|method\|instance\|define\|if\|else\|case\)\>'
		return indnt + &shiftwidth
	endif

	" At the end of a block, we have to unindent both the current line
	" (the "end" for instance) and the newly-created line.
	if this_codeline =~ '^\s*\<\(end\|else\)\>'
		return indnt - &shiftwidth
	endif

	return indnt
endfunction
