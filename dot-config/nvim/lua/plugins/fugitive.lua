return {
	-- Git integration
	"tpope/vim-fugitive",
	keys = { { "<leader>gs", vim.cmd.Git, desc = "[G]it [S]tatus", mode = "n" } },
}
