{ colors, ... }: {
  programs.kitty = {
    enable = true;
    settings = {
      font_family = colors.font;
      font_size = "18.0";
      window_padding_width = "8";

      foreground = colors.fg;
      background = colors.bg;
      selection_foreground = colors.bg;
      selection_background = colors.fg;
      cursor = colors.accent;
      cursor_text_color = colors.bg;
      url_color = colors.accent;

      active_border_color = colors.accent;
      inactive_border_color = colors.surface0;
      bell_border_color = colors.yellow;

      active_tab_foreground = colors.bg;
      active_tab_background = colors.accent;
      inactive_tab_foreground = colors.fg;
      inactive_tab_background = colors.surfaceDark;

      color0 = colors.surface0; color8 = colors.surface1;
      color1 = colors.red;      color9 = colors.red;
      color2 = colors.green;    color10 = colors.green;
      color3 = colors.yellow;   color11 = colors.yellow;
      color4 = colors.accent;   color12 = colors.accent;
      color5 = colors.purple;   color13 = colors.purple;
      color6 = colors.cyan;     color14 = colors.cyan;
      color7 = colors.fg;       color15 = colors.white;

      linux_display_server = "x11";
      sync_to_monitor = "no";
      repaint_delay = "10";
      input_delay = "3";
    };
  };
}
