--[[
        Modes
        normal_mode = "n",
        insert_mode = "i",
        visual_mode = "v",
        visual_block_mode = "x",
        term_mode = "t",
        command_mode = "c",
--]]

local s  = vim.keymap.set
local c  = vim.api.nvim_command
local o  = { noremap = true, silent = true }
local to = { silent = true }
--  Lexplore
local lexplore_switch = true
s('n','<Tab>', function ()
        if lexplore_switch then
          c(':25 Lexplore')
          lexplore_switch = false
        else
          c(':Lexplore')
          lexplore_switch = true
        end
end )

-- Esc a terminal and write in normal
s("n", '<Esc>',"<cmd>w<cr>",o)
s('t','<a-e>','<Esc>',to)

-- Choose window
s('n','<a-w>','<c-w>k',o)
s('n','<a-d>','<c-w>l',o)
s('n','<a-s>','<c-w>j',o)
s('n','<a-a>','<c-w>h',o)
s('t','<a-w>','<c-\\><c-n><c-w>k',to)
s('t','<a-d>','<c-\\><c-n><c-w>l',to)
s('t','<a-s>','<c-\\><c-n><c-w>j',to)
s('t','<a-a>','<c-\\><c-n><c-w>h',to)
s('i','<a-w>','<esc><cmd>w<cr><c-w>k',o)
s('i','<a-d>','<esc><cmd>w<cr><c-w>l',o)
s('i','<a-s>','<esc><cmd>w<cr><c-w>j',o)
s('i','<a-a>','<esc><cmd>w<cr><c-w>h',o)

-- Create window
s('n','<c-d>','<c-w>v',o)
s('n','<c-s>','<c-w>s',o)
s('i','<c-d>','<esc><cmd>w<cr><c-w>v',o)
s('i','<c-s>','<esc><cmd>w<cr><c-w>s',o)

 --[[
 --     linux term://bash, <cmd>terminal<cr>
 --     windows term://pwsh, <cmd>terminal pwsh<cr>
 --]]
s('t','<c-d>','<c-\\><c-n><cmd>vsplit term://pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)
s('t','<c-s>','<c-\\><c-n><cmd>split term://pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)
s('n','<a-cr>','<cmd>w<cr><cmd>10 split term://pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)
s('i','<a-cr>','<esc><cmd>w<cr><cmd>10 split term://pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)
s('n','<a-e>','<cmd>terminal pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)
s('i','<a-e>','<esc><cmd>terminal pwsh<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',o)

-- Window close
s('n','<c-w>','<cmd>q<cr>',o)
s('i','<c-w>','<esc><cmd>q<cr>',o)
s('t','<c-w>','<c-\\><c-n><cmd>q<cr>',o)
s("i",'<Esc>', "<esc><cmd>w<cr>",o)
s("i",'<Esc><Esc>', "<esc><cmd>q<cr>",o)
s("n",'<Esc><Esc>', "<cmd>q<cr>",o)
s('t','<Esc>', '<c-\\><c-n>',to)
s('t','<Esc><Esc>', '<c-\\><c-n><cmd>q<cr>',to)
s('t','<a-cr>','<c-\\><c-n><cmd>q<cr>',to)

-- Window coordinate
s('n','<a-k>','<c-w>+',o)
s('n','<a-l>','<c-w>>',o)
s('n','<a-j>','<c-w>-',o)
s('n','<a-h>','<c-w><',o)
s('t','<a-k>','<c-\\><c-n><c-w>+',o)
s('t','<a-l>','<c-\\><c-n><c-w>>',o)
s('t','<a-j>','<c-\\><c-n><c-w>-',o)
s('t','<a-h>','<c-\\><c-n><c-w><',o)
s('i','<a-k>','<esc><c-w>+',o)
s('i','<a-l>','<esc><c-w>>',o)
s('i','<a-j>','<esc><c-w>-',o)
s('i','<a-h>','<esc><c-w><',o)

-- Table
s('n','<Space>','<cmd>tabnew<cr>',o)
s('n','<c-h>','<cmd>tabNext<cr>',o)    -- before
s('n','<c-l>','<cmd>tabnext<cr>',o)

-- Navigate buffers
s("n", "<c-k>", "<cmd>bnext<CR>",o)
s("n", "<c-j>", "<cmd>bprevious<CR>",o)
