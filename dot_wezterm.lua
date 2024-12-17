local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 10
config.color_scheme = "Dracula"

config.keys = {}
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = act.ActivateTab(i - 1),
	})
end

return config
