local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
vim.g.mapleader = " "

-- NORMAL MODE --
-- change to netrw via "space" and "e" key combo
keymap("n", "<leader>pv", ":Ex <CR>", opts)
-- keymap("n", "<leader>q", ":q <CR>", opts)

-- NETRW --
-- use this to jump to the neovim config file from anywhere
vim.api.nvim_create_user_command(
	'GoNvimConfig',
	function()
		vim.cmd[[Explore /Users/brian/.config/nvim]]
	end,
	{}
	)
-- change directory to PWD for easier localized grepping, etc.
-- % is the current file name
-- :p expands that name to the full path
-- :h removes the last part of the path
vim.keymap.set("n", '<leader>cd', ':cd %:p:h')

