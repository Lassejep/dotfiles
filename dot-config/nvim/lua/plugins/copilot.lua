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
		branch = "main",
		cmd = "CopilotChat",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken",
		opts = {
			debug = true,
			show_help = true,
			auto_follow_cursor = false,
			prompts = {
				concise = {
					system_prompt = "Keep you message concise, and with no or minimal code.",
					description = "Ask the chat to keep their message short. This is not supposed to be use on its own, you have to ask a question and add this prompt with /concise",
				},
				Commit = {
					prompt = '> #git:staged\n\nWrite commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. The message should be formatted something like the following: "Feature: Implemented some feature.". Remember the capitalization',
				},
			},
			mappings = {
				reset = {
					normal = "<leader>cl",
					insert = "",
				},
			},
		},
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle [C]opilot [C]hat", mode = { "n", "v" } },
			{ "<leader>cg", "<cmd>CopilotChatCommit<cr>", desc = "[C]ommit [G]it staged", mode = { "n", "v" } },
		},
	},
}
