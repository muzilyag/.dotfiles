{ lib, ... }: {
  imports = lib.optional (builtins.pathExists ./hardware-configuration.nix) ./hardware-configuration.nix;

  virtualisation.virtualbox.guest.enable = true;
  systemd.oomd.enable = false;
}
