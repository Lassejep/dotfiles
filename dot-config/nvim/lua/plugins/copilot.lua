return {
	-- Copilot integration
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		opts = {
			filetypes = {
				markdown = true,
				help = true,
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = false,
					accept_line = "<tab>",
				},
			},
		},
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		cmd = "CopilotChat",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = true,
			mappings = {
				reset = {
					normal = "<leader>cl",
					visual = "<leader>cl",
					insert = "<leader>cl",
				},
			},
		},
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle [C]opilot [C]hat", mode = { "n", "v" } },
			{ "<leader>cg", "<cmd>CopilotChatCommitStaged<cr>", desc = "[C]ommit [G]it staged", mode = { "n", "v" } },
			{ "<leader>cl", "<cmd>CopilotChatReset<cr>", desc = "[C]opilot Reset [L]", mode = { "n", "v" } },
		},
	},
}
