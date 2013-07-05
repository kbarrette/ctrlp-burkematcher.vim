" Vim CtrlP + burke's matcher
"
" https://github.com/kbarrette/ctrlp-burkematcher.vim
"

if exists('g:cpbm_loaded')
  finish
endif
let g:cpbm_loaded = 1

" Global so it's visible to CtrlP
function! BurkeMatcher(items, str, limit, mmode, ispath, crfile, regex)
  let results = []

  " No search string, just return the list we were passed
  if len(a:str) == 0
    let results = a:items[0:(a:limit)]

  " We have a search string
  else
    let match_cmd = g:cpbm_path_to_matcher . ' --limit ' . a:limit . ' --no-dotfiles ' . a:str
    let results = split(system(match_cmd, join(a:items, "\n")), "\n")

  endif

  " Exclude current file from results when a:ispath == 1
  if a:ispath == 1
    remove(results, index(results, a:crfile))
  endif

  return results
endfunction

