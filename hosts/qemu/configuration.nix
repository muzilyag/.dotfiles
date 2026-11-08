{ lib, ... }: {
  imports = lib.optional (builtins.pathExists ./hardware-configuration.nix) ./hardware-configuration.nix;

  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
  systemd.oomd.enable = false;
}
