local wezterm = require("wezterm")

return {
	-- Theme
	color_scheme = "tokyonight",

	-- Fonts
	font = wezterm.font_with_fallback({
		{ family = "HackGen Console NF", weight = "Regular" },
		{ family = "HackGen Console NF", weight = "Regular", assume_emoji_presentation = true },
		"Noto Color Emoji",
	}),
	font_size = 18.0,

	-- Opacity
	window_background_opacity = 0.9,
	macos_window_background_blur = 20,

	-- Padding
	window_padding = {
		left = 10,
		right = 10,
		top = 5,
		bottom = 5,
	},

	-- Window
	window_decorations = "RESIZE",

	-- Tabs
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_frame = {
		font_size = 18.0,
		inactive_titlebar_bg = "none",
		active_titlebar_bg = "none",
	},
	window_background_gradient = {
		colors = { "#000000" },
	},
	show_new_tab_button_in_tab_bar = false,
	show_close_tab_button_in_tabs = false,

	colors = {
		tab_bar = {
			inactive_tab_edge = "none",
		},
	},

	-- IME
	use_ime = true,

	-- Misc
	check_for_updates = false,
	audible_bell = "Disabled",
}
