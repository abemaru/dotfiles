require("lazy").setup({
	defaults = {
		lazy = true,
	},
	dev = {
		path = "@lazyPath@",
		patterns = { "." },
		fallback = true,
	},
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins"},
		{ import = "plugins" },
	},
	performance = {
		cache = {
			enabled = true,
		},
		reset_packpath = true,
		rtp = {
			reset = true,
		},
	},
})
