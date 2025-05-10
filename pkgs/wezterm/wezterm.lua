local wezterm = require("wezterm")

return {
    font_size = 16.0,
    window_frame = {
        font_size = 14.0,
    },

    window_padding = {
        left = 10,
        right = 10,
        top = 5,
        bottom = 5,
    },

    window_decorations = "RESIZE",
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,

    use_ime = true,
}
