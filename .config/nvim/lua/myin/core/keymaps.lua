-- set leader key to ,
vim.g.mapleader = " "

local keymap = vim.keymap

-- use jj to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- fast save & fast quit
keymap.set("n", "<leader>w", ":w!<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- Enter will now insert an empty line below cursor
keymap.set("n", "<Enter>", "o<ESC>")
keymap.set("n", "<leader><Enter>", "O<ESC>")

-- Split window: 
keymap.set("n", "<leader>-", ":<C-u>split<CR>")
keymap.set("n", "<leader>\\", ":<C-u>vsplit<CR>")
