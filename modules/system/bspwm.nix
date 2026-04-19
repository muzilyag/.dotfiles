{ pkgs, unstable, ... }: {
 services.xserver = {
  enable = true;
  layout = "us,ru";
  xkbOptions = "grp:alt_shift_toggle";

  displayManager.lightdm.enable = true;
  windowManager.bspwm.enable = true;
 };

 environment.systemPackages = with pkgs; [
  unstable.tree-sitter
  unstable.nodejs  
  gcc
  kitty
  dmenu
  sxhkd
 ];

 programs.zsh.enable = true;
 programs.dconf.enable = true;
}
