setlocal foldmethod=expr
setlocal foldexpr=VimSystemVerilogFoldExpr(v:lnum)

function! GetSystemVerilogFold(lnum)
	if getline(a:lnum) =~? '\v^\s*$'
		return '-1'
    endif
endfunction

function! VimSystemVerilogFoldExpr(lnum)
	if getline(a:lnum) =~? '\v^\s*$'
		return '-1'
    endif

    if getline(a:lnum) =~? '^\s*class.*$\|^\s*virtual\s*class.*$'
        return '>1'
    elseif getline(a:lnum) =~? '^\s*endclass.*$'
        return '<1'
    elseif getline(a:lnum) =~? '^\s*task.*$\|^\s*virtual\s*task.*$'
        return '>2'
    elseif getline(a:lnum) =~? '^\s*endtask.*$'
        return '<2'
    elseif getline(a:lnum) =~? '^\s*function.*$\|^\s*virtual\s*function.*$'
        return '>3'
    elseif getline(a:lnum) =~? '^\s*endfunction.*$'
        return '<3'
    elseif getline(a:lnum) =~? '^\s*case.*$'
        return '>4'
    elseif getline(a:lnum) =~? '^\s*endcase.*$'
        return '<4'
    else
        return '='
    endif
endfunction

