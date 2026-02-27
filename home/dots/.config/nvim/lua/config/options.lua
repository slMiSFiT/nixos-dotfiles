local global = vim.g
local o = vim.opt

o.termguicolors = true
o.tabstop = 2 -- Number of visual spaces per TAB
o.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
o.softtabstop = 2
o.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.number = true -- Show the number of the line
--o.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
