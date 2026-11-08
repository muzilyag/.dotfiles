{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    layout = "us,ru";
    xkbOptions = "grp:alt_shift_toggle";

    desktopManager.xterm.enable = false;
    displayManager.lightdm.enable = true;
    windowManager.bspwm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    sxhkd
  ];

  programs.zsh.enable = true;
  programs.dconf.enable = true;
}
