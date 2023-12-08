vim.cmd [[
  " Equivalent to the above.
  let b:ale_linters = {
    \ 'javascript': ['eslint'],
  \ }

  let g:ale_fixers = ['eslint']

  let g:ale_sign_error = '>>'
  let g:ale_sign_warning = '--'

  " Remove error messages
  " let g:ale_virtualtext_cursor=0

  " Run linters ONLY when file is saved.
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_insert_leave = 0
  let g:ale_lint_on_save = 1

  " You can disable this option too
  " if you don't want linters to run on opening a file
  let g:ale_lint_on_enter = 1

  highlight ALEWarning ctermbg=DarkMagenta
]]
