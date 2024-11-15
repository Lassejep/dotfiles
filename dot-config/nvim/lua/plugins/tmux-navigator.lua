return {
	-- Tmux navigation
	"christoomey/vim-tmux-navigator",
	keys = {
		{ "<C-h>", vim.cmd.TmuxNavigateLeft, desc = "Tmux Navigate [L]eft" },
		{ "<C-j>", vim.cmd.TmuxNavigateDown, desc = "Tmux Navigate [D]own" },
		{ "<C-k>", vim.cmd.TmuxNavigateUp, desc = "Tmux Navigate [U]p" },
		{ "<C-l>", vim.cmd.TmuxNavigateRight, desc = "Tmux Navigate [R]ight" },
	},
}
