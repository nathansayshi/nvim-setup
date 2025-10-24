-- Tree-style directory viewing (i.e. when doing `nvim ./`)
vim.cmd("let g:netrw_liststyle = 3")

-- Syntax mappings
vim.api.nvim_create_autocmd(
  {"BufNewFile", "BufRead"},
  {
    pattern = "*.service*", 
    command = "set ft=systemd"
  }
)

local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- tabs and indentation defaults
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one


-- disable auto line wrapping
opt.wrap = false 

-- search
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- assume case-insensitive search unless casing is used in search string

-- show cursorline
opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other "true color" terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark automatically
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- allow backspace on indent, end-of-line or insert mode start position
opt.backspace = "indent,eol,start"

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
