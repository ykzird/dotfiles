-- Pull in the Wezterm API
local wezterm = require 'wezterm'

-- This will hold the config
local config = wezterm.config_builder()

-- this is where to apply config choices

-- spawn zsh shell in login mode
-- config.default_prog = { 'usr/bin/zsh' }

-- color scheme:
config.color_scheme = 'Catppuccin Mocha'

-- enable hyperlinks
config.hyperlink_rules = wezterm.default_hyperlink_rules()

-- config key assignments
config.keys = {
	{
		key = 'n',
		mods = 'ALT|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Right',
			size = { Percent = 50 },
		},
	},
	{
		key = '+',
		mods = 'ALT|SHIFT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	{
		key = '_',
		mods = 'ALT|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'w',
		mods = 'ALT|SHIFT',
		action = wezterm.action.CloseCurrentPane { confirm = false },
	},
}

-- finally, return config to wezterm
return config
