-- Options
require("nvim-rooter").setup({
  rooter_patterns = { '.git', '.hg', '.svn', '.gitconfig', '.fdignore' },
  trigger_patterns = { '*' },
  manual = true,
})

