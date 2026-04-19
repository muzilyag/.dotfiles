{ config, pkgs, ... }: {
  programs.rofi = {
    enable = true;
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
      bg = "#101418";
      fg = "#eaecf0";
      accent = "#88a3e8";
      bg-alt = "#27292d";
    in {
      "*" = {
        background-color = mkLiteral bg;
        foreground-color = mkLiteral fg;
        text-color = mkLiteral fg;
        font = "JetBrainsMono Nerd Font 16";
      };
      "window" = {
        width = mkLiteral "25%";
        border = mkLiteral "2px";
        border-color = mkLiteral accent;
        border-radius = mkLiteral "12px";
        padding = mkLiteral "15px";
      };
      "element" = {
        padding = mkLiteral "8px";
        border-radius = mkLiteral "8px";
      };
      "element selected" = {
        background-color = mkLiteral bg-alt;
        text-color = mkLiteral accent;
      };
      "element-text" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
