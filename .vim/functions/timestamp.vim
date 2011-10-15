function! TimeStamp()
  if &modified
    let lines = line("$") < 5 ? line("$") : 5
    let pattern1 = '\(Last [Mm]odified:\).*'
    let replace1 = '\1' . strftime(" %a, %d %b %Y %T %z")
    execute printf('1,%ds/\C\m%s/%s/e', lines, pattern1, replace1)
    execute printf('$-%d+1,$s/\C\m%s/%s/e', lines, pattern1, replace1)
    let pattern2 = '\($Id: \f\+ \d\+\.\d\+\(\.\d\+\.\d\+\)*\)\(+\(\d\+\)\)\?'
    let replace2 = '\=submatch(1) . "+" . (submatch(4) + 1)'
    execute printf('1,%ds/\C\m%s/%s/e', lines, pattern2, replace2)
    execute printf('$-%d+1,$s/\C\m%s/%s/e', lines, pattern2, replace2)
  endif
endfunction
