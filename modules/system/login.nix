{ config, pkgs, ... }:

{
  services.xserver.displayManager.lightdm = {
    enable = true;
    greeters.gtk = {
      enable = true;
      theme = {
        name = "Catppuccin-Mocha-Standard-Lavender-Dark";
        package = pkgs.catppuccin-gtk.override {
          accents = [ "lavender" ];
          size = "standard";
          variant = "mocha";
        };
      };
      iconTheme = {
        name = "Papirus-Dark";
        package = pkgs.catppuccin-papirus-folders;
      };
      extraConfig = ''
        [greeter]
        background = #1e1e2e
        user-background = false
        hide-user-image = true
        window-position = center
        font-name = JetBrainsMono Nerd Font 16
        password-bullet-character = 
        indicators = ~host;~spacer;~clock;~spacer;~session;~language;~power
      '';
    };
  };

  environment.systemPackages = [
    (pkgs.catppuccin-gtk.override {
      accents = [ "lavender" ];
      variant = "mocha";
    })
  ];
}
