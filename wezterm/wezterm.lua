local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.enable_kitty_keyboard = true

config.window_decorations = "NONE"
config.window_background_opacity = 0.8

config.colors = {
  background = "#000000",
}

config.scrollback_lines = 10000

config.hide_mouse_cursor_when_typing = false

config.font = wezterm.font("AnnotationM Nerd Font", { weight = "Regular" })
config.font_size = 14

config.automatically_reload_config = true

config.disable_default_key_bindings = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.keys = {
    {
        key = 'c',
        mods = 'CTRL|SHIFT',
        action = act.CopyTo 'Clipboard',
    },
    {
        key = 'v',
        mods = 'CTRL|SHIFT',
        action = act.PasteFrom 'Clipboard',
    },
    {
        key = 'Space',
        mods = 'CTRL|SHIFT',
        action = act.QuickSelect,
    },
}

return config
