{ isVM, colors, ... }: {
  services.picom = {
    enable = true;
    vSync = !isVM;
    backend = if isVM then "xrender" else "glx";
    wintypes = {
      dock = { shadow = false; clip-shadow-above = true; };
      panel = { shadow = false; };
    };
    settings = {
      shadow = false;
      corner-radius = 8;
      fading = false;
      unredir-if-possible = false;
    };
  };

  services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 320;
        height = 120;
        offset = "12x58";
        origin = "top-right";
        transparency = 0;
        frame_color = colors.accent;
        frame_width = 2;
        corner_radius = 10;
        font = "${colors.font} 12";
        padding = 12;
        horizontal_padding = 12;
      };
      urgency_low = {
        background = colors.bg;
        foreground = colors.fg;
        timeout = 4;
      };
      urgency_normal = {
        background = colors.bg;
        foreground = colors.fg;
        timeout = 6;
      };
      urgency_critical = {
        background = colors.bg;
        foreground = colors.red;
        frame_color = colors.red;
        timeout = 0;
      };
    };
  };
}
