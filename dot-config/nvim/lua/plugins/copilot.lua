return {
	-- Copilot integration
	"olimorris/codecompanion.nvim",
	config = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		strategies = {
			chat = {
				adapter = "deepseek",
				keymaps = {
					close = {
						modes = { n = "q", i = "<C-c>" },
					},
				},
				show_token_count = true,
			},
		},
	},
	keys = { { "<leader>cc", vim.cmd.CodeCompanionChat, desc = "[C]odeCompanion[C]hat" } },
}
