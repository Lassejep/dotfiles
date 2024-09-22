return {
	-- Horizontal scrolling while writing
	{
		"Aasim-A/scrollEOF.nvim",
		config = function()
			require("scrollEOF").setup()
		end,
	},
}
