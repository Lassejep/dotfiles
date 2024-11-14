return {
	-- Copilot integration
	{
		"zbirenbaum/copilot.lua",
		cmd = { "Copilot" },
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				filetypes = {
					markdown = true,
				},
				panel = {
					enabled = true,
					keymap = {
						open = "<leader>tab",
					},
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = false,
						accept_line = "<tab>",
					},
				},
			})
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = true,
			context = "buffer",
		},
		vim.keymap.set("n", "<leader>cc", ":CopilotChat<CR>", { noremap = true, silent = true }),
		vim.keymap.set("n", "<leader>cg", ":CopilotChatCommitStaged<CR>", { noremap = true, silent = true }),
	},
}
