if exists('g:loaded_git_actions') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

command! GitActionsCheckoutB lua require('git-actions').checkout('-b')

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_git_cmds = 1