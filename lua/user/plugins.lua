local fn = vim.fn

-- auto-install packer
local install_path = fn.stdpath("data").. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path
	})
	print("Installing packer... Close and reopen Neovim.")
	vim.cmd([[packadd packer.nvim]])
end

-- autocommand that reloads neovim whenver you save the plugins.lua file
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
	]])

-- use a protected call so we don't error out on the first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Oops! Packer failed to pack!")
	return
end

-- have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- INSTALL PLUGINS HERE --
return packer.startup(function (use)
	use "wbthomason/packer.nvim" -- packer manages itself

	-- may be able to remove these, check repositories to see if they are included now
	use "nvim-lua/popup.nvim" -- an implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- useful lua functions used by lots of plugins

	use 'tanvirtin/monokai.nvim' -- imports all supported monokai flavors
	
	-- TELESCOPE fuzzy finding
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- TREESITTER
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}

	-- CMP
	use "hrsh7th/nvim-cmp" -- the completion plugin
	use "hrsh7th/cmp-nvim-lsp" -- LSP completion
	use "hrsh7th/cmp-nvim-lua" -- lua completion
	use "hrsh7th/cmp-path" -- path completion
	use "hrsh7th/cmp-buffer" -- buffer completion

	-- SNIPPETS
	use "L3MON4D3/LuaSnip" -- snippet engine

	-- LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/mason.nvim" -- simple to use language server installer
	use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
  }

	-- automatically set up your configuration after cloning packer.nvim
	-- put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
