local o = vim.opt
-- general 
o.swapfile = false
-- indentation
o.expandtab = true   -- Turns tabs into space
o.shiftwidth = 2     -- shift 4 spaces when tab
o.tabstop = 2        -- 1 tab == 2 spaces
o.smartindent = true -- auto indent lines
-- UI
o.colorcolumn = '100'-- Line at column 100
o.showmatch = true
o.number = true
require("config.lazy")
