{ ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  virtualisation.vmware.guest.enable = true;
  systemd.oomd.enable = false;
}
