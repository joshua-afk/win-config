local wezterm = require 'wezterm';
-- local catppuccin = require("colors/catppuccin").setup {}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    -- Configs for Windows only
    font_dirs = {
        'C:\\Users\\whoami\\.dotfiles\\.fonts'
    }
    default_prog = {'wsl.exe', '~', '-d', 'Ubuntu-20.04'}
end

return {
    default_prog = default_prog,
    term = "xterm-256color",
    -- window_decorations = "NONE",
    hide_tab_bar_if_only_one_tab = true,
    exit_behavior = 'Close',
    window_padding = {
        left = 3, right = 3,
        top = 2, bottom = 3,
    },
    inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.8,
    },
    window_background_opacity = 0.93,

    -- Fonts
    font_size   = 10,
    line_height = 1.1,
    -- font = wezterm.font('DroidSansMono Nerd Font Mono'),
    -- font = wezterm.font('Iosevka'),
    -- font = wezterm.font('Consolas'),
    -- initial_rows = 40,
    -- initial_cols = 200,
    -- 24 inch monitor config
    -- initial_rows = 45,
    -- initial_cols = 230,
    initial_rows = 50,
    initial_cols = 264,
    -- 15 inch monitor
    -- initial_rows = 29,
    -- initial_cols = 165,
    cursor_blink_rate = 800,
    default_cursor_style = "BlinkingUnderline",
    -- colors = catppuccin,
    keys = {
      {key="n", mods="SHIFT|CTRL", action="ToggleFullScreen"},
    }
}
