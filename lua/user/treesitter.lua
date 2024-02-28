local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	print("uh oh, tree-sitter shit the bed!")
	return
end

configs.setup {
	ensure_installed = { "ruby", "typescript", "javascript", "rust", "python", "tsx", "c_sharp", "c", "lua", "vim", "vimdoc", "query" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages.
	sync_install = false, -- install languages synchronously (only applied to 'ensure_installed')
	ignore_install = { "" }, -- list of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of languages that will be disabled
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "yaml" } },
}

