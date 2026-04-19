{ config, pkgs, ... }: {
 imports = [
  ./hardware-configuration.nix
  ../../modules/system/bspwm.nix
  ../../modules/system/login.nix
 ];

 boot.loader.systemd-boot.enable = true;
 boot.loader.efi.canTouchEfiVariables = true;

 networking.hostName = "vm";
 networking.networkmanager.enable = true;

 time.timeZone = "Europe/Moscow";

 nix.settings.experimental-features = [ "nix-command" "flakes" ];

 nixpkgs.config.allowUnfree = true;

 virtualisation.docker.enable = true;

 users.users.ilya = {
  isNormalUser = true;
  extraGroups = [ "wheel" "networkmanager" "video" "docker" "audio" ];
  shell = pkgs.zsh;
 };
 
 virtualisation.vmware.guest.enable = true;
 systemd.oomd.enable = false;

 fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" "FiraCode" ]; })
 ];
 
 security.rtkit.enable = true;
 services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
 };

 xdg.portal = {
  enable = true;
  config.common.default = "*";
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
 };

 services.xserver = {
  enable = true;
 };
 services.dbus.enable = true;
 programs.nix-ld.enable = true;
 programs.xfconf.enable = true;
 services.gvfs.enable = true;
 system.stateVersion = "23.11";
}
