local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false
config.color_scheme = "Gruvbox dark, hard (base16)"
config.font = wezterm.font("JetBrains Mono")

return config
