{ config, pkgs, ... }: {
  services.picom = {
    enable = true;
    vSync = false;
    backend = "xrender";
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
}
