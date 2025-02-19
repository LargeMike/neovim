return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c_sharp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "regex", "bash", "json" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
