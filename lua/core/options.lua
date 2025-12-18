local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = false

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Appearance
opt.wrap = false
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Window splitting
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.scrolloff = 8
opt.updatetime = 50
opt.iskeyword:append("-")
