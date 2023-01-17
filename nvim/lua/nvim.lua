local o = vim.opt
local c = vim.api.nvim_command

o.backup = false
o.swapfile = false
o.autowrite = true
o.autowriteall = true
o.autoindent = true
o.autoread = true
o.smarttab = true
o.expandtab = true
o.title = true
o.shiftwidth = 4
o.cursorline = true
o.number = true
o.relativenumber = true
o.smartindent = true
o.showtabline = 2
o.hlsearch = true
o.signcolumn = "yes"
o.clipboard = "unnamedplus"                -- allow use system clipboard
o.mouse = "a"
o.completeopt = { "menuone", "noselect" , "menu" }  -- for cmp

c(':colorscheme slate')
