return {
	{
		"goolord/alpha-nvim",
		opts = function(_, opts)
			opts.section.header.val = require("tenprint_alpha.banner").generate_banner({
				shapes = "angles",
				width = 60,
				rows = 8,
			})
		end,
	},
}
