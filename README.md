ctrlp-burkematcher.vim
==========
I like [burke](https://github.com/burke)'s [Matcher](https://github.com/burke/matcher) for fuzzy-finding.
I also like [CtrlP](https://github.com/kien/ctrlp.vim).  This plugin exists primarily as a place for me
to keep my CtrlP match function.

Installation
------------
Have CtrlP installed, build Matcher and set `g:cpbm_path_to_matcher` to the full path of the Matcher binary,
and `let g:ctrlp_match_func = { 'match': 'BurkeMatcher' }`

