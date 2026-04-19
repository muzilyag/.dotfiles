{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    settings = {
      font_family = "JetBrainsMono Nerd Font";
      font_size = "18.0";
      window_padding_width = "8";
      
      foreground = "#eaecf0";
      background = "#101418";
      selection_foreground = "#101418";
      selection_background = "#eaecf0";
      cursor = "#88a3e8";
      cursor_text_color = "#101418";
      url_color = "#88a3e8";
      
      active_border_color = "#88a3e8";
      inactive_border_color = "#27292d";
      bell_border_color = "#ca982e";
      
      active_tab_foreground = "#101418";
      active_tab_background = "#88a3e8";
      inactive_tab_foreground = "#eaecf0";
      inactive_tab_background = "#202122";

      color0 = "#27292d"; color8 = "#404244";
      color1 = "#fd7865"; color9 = "#fd7865";
      color2 = "#2cb491"; color10 = "#2cb491";
      color3 = "#ca982e"; color11 = "#ca982e";
      color4 = "#88a3e8"; color12 = "#88a3e8";
      color5 = "#a799cd"; color13 = "#a799cd";
      color6 = "#80cdb3"; color14 = "#80cdb3";
      color7 = "#eaecf0"; color15 = "#f8f9fa";

      linux_display_server = "x11";
      sync_to_monitor = "no";
      repaint_delay = "10";
      input_delay = "3";
    };
  };
}
