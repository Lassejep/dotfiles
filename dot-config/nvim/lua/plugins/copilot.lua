return {
	-- Copilot integration
	{
		"github/copilot.vim",
		opt = {
			filetypes = { markdown = true },
			vim.keymap.set("i", "<Tab>", "<Plug>(copilot-accept-line)", { noremap = false }),
		},
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
		},
		vim.keymap.set("n", "<leader>cc", ":CopilotChat<CR>", { noremap = true }),
	},
}
