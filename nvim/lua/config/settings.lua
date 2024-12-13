-- [[ Setting options ]]
-- See `:help vim.o`

vim.o.wildmode = "longest:full,full"

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Folding by syntax
vim.o.foldmethod = 'indent'
vim.o.foldenable = false

vim.o.relativenumber = true

vim.o.list = true
vim.o.listchars = 'tab:» ,eol:¬,trail:⋅,extends:❯,precedes:❮'

-- Indentation settings
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Diagnostic settings (error messages)
vim.diagnostic.config({
  virtual_text = false,
})
