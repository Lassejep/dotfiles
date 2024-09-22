return {
	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.cmd([[
			function OpenMarkdownPreview (url)
				execute "silent ! firefox --new-window " . a:url
			endfunction
			]])
			vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
		end,
		ft = { "markdown" },
		keys = {
			{
				"<leader>mp",
				vim.cmd.MarkdownPreview,
				desc = "Markdown [P]review",
			},
		},
	},
}
