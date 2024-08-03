local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox Dark (Gogh)'
config.font = wezterm.font("Hack Nerd Font")
config.enable_tab_bar = false
config.window_decorations = "NONE"

return config
