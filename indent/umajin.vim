" idnent/umajin.vim

setlocal indentexpr=UmajinIndent()

function! UmajinIndent()
    let line = getline(v:lnum)
    let previousNum = prevnonblank(v:lnum-1)
    let previous = getline(previousNum)

    if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
        return indent(previousNum) + &tabstop

    endif

endfunction
