-- :help options

local options = {
	backup = false, 						-- creates a backup file
	clipboard = "unnamedplus", 				-- allows neovim to access the system clipboard
	cmdheight = 2, 							-- more space in the neovim command line for displaying messages.
	ignorecase = true, 						-- ignore case in search pattern
	showmode = false, 						-- hides the different modes (INSERT, NORMAL, etc.)
	splitbelow = true, 						-- force horizontal splits below current window
	splitright = true, 						-- force vertical splits to go to the right of current window
	smartindent = true, 					-- not quite sure what this is, will uncomment if garbo
	wrap = true, 							-- display lines as one long line
	shiftwidth = 4, 						-- the number of spaces inserted for each indentation
	tabstop = 4, 							-- the number of spaces inserted for each tab
	number = true, 							-- enable numbered lines
	relativenumber = false, 				-- set relative lines
	scrolloff = 8, 							-- not sure what this does, but will disable if garbo
	sidescrolloff = 8, 						-- same as above
	termguicolors = true,					-- set term gui colors
	smartcase = true,
	mouse = a, 
}

-- vim.opt.shortmess:append "c"				-- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"				-- hyphenated words recognized by searches

for k, v in pairs(options) do
	vim.opt[k] = v
end
