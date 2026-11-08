{ config, colors, ... }: {
  programs.rofi = {
    enable = true;
    extraConfig = {
      show-icons = true;
      icon-theme = "Papirus-Dark";
      display-drun = "";
      drun-display-format = "{name}";
    };
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        background-color = mkLiteral colors.bg;
        foreground-color = mkLiteral colors.fg;
        text-color = mkLiteral colors.fg;
        font = "${colors.font} 16";
      };
      "window" = {
        width = mkLiteral "25%";
        border = mkLiteral "2px";
        border-color = mkLiteral colors.accent;
        border-radius = mkLiteral "12px";
        padding = mkLiteral "15px";
      };
      "inputbar" = {
        children = map mkLiteral [ "prompt" "entry" ];
        padding = mkLiteral "4px 8px";
        margin = mkLiteral "0 0 10px 0";
      };
      "prompt" = {
        text-color = mkLiteral colors.accent;
        margin = mkLiteral "0 10px 0 0";
      };
      "listview" = {
        lines = 8;
        scrollbar = false;
      };
      "element" = {
        padding = mkLiteral "8px";
        border-radius = mkLiteral "8px";
        spacing = mkLiteral "10px";
      };
      "element selected" = {
        background-color = mkLiteral colors.surface0;
        text-color = mkLiteral colors.accent;
      };
      "element-icon" = {
        size = mkLiteral "24px";
        background-color = mkLiteral "inherit";
      };
      "element-text" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
