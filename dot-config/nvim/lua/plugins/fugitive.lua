return {
	-- Git integration
	{
		"tpope/vim-fugitive",
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git),
	},
}
