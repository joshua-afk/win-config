g = vim.g
o = vim.o
opt = vim.opt
api = vim.api
fn = vim.fn

-- o.t_Co=256
o.encoding='UTF-8'
o.hidden=true
o.cmdheight=1
o.updatetime=100
o.shortmess=o.shortmess .. "c"
o.scrolloff=8
o.number=true
o.relativenumber=true
o.cursorline=true
o.laststatus=2
o.linespace=4
o.showmode=true
o.hlsearch=false
o.wrap=false
o.tags='tags'
o.shiftround=true
o.backspace='indent,eol,start'
o.autoindent=true
o.copyindent=true
o.ignorecase=true
o.smartcase=true
o.splitbelow=true
o.splitright=true
o.showcmd=true
o.viewoptions = o.viewoptions:gsub('options', '')
o.mouse='a'
o.ttyfast=true
o.lazyredraw=false
o.clipboard='unnamedplus'
o.fixendofline=false
o.completeopt='menu,menuone,noselect'

-- Backup file
o.swapfile=false
o.backup=false
o.writebackup=false
o.undofile=true
opt.undodir=fn.expand(fn.stdpath('data')..'/plugged')

-- TAB
o.tabstop=2                           					-- Width of tab character
o.softtabstop=2                       					-- Fine tunes the amount of white space to be added
o.shiftwidth=2                        					-- Number of spaces to use for autoindenting
o.expandtab=true                           			-- Use spaces instead of tabs

-- Fold
o.foldmethod='manual'
o.foldlevel=99
o.foldenable=false

vim.cmd [[
  set fillchars=fold:\
  set foldtext=CustomFoldText()
  setlocal foldexpr=GetPotionFold(v:lnum)

  function! GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
      return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
      return this_indent
    elseif next_indent < this_indent
      return this_indent
    elseif next_indent > this_indent
      return '>' . next_indent
    endif
  endfunction

  function! IndentLevel(lnum)
      return indent(a:lnum) / &shiftwidth
  endfunction

  function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
  endfunction

  function! CustomFoldText()
    " get first non-blank line
    let fs = v:foldstart

    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile

    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr))
    return line . expansionString . foldSizeStr . foldLevelStr
  endfunction
]]
