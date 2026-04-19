{ config, pkgs, ... }: {
  imports = [
    ./wm.nix
    ./theme.nix
    ./programs 
  ];

  home.username = "ilya";
  home.homeDirectory = "/home/ilya";

  home.packages = with pkgs; [
    telegram-desktop feh picom yazi
    (polybar.override { pulseSupport = true; })
    font-awesome material-icons killall jq
    xfce.thunar xfce.thunar-archive-plugin
    gcc gnumake cmake python3 ripgrep fd unzip wget
    nodejs_20 xclip docker-compose gh php
    python3Packages.pynvim lua-language-server clang-tools
  ];

  home.file = {
    ".config/clangd/config.yaml".source = pkgs.writeText "clangd-config" ''
      CompileFlags:
        Add:
          - "-idirafter${pkgs.glibc.dev}/include"
          - "-isystem${pkgs.gcc.cc.lib}/include/c++"
          - "-isystem${pkgs.stdenv.cc.cc.lib}/lib/gcc/x86_64-unknown-linux-gnu/12.3.0/include"
        Index:
          Background: Build
    '';

    ".config/bspwm".source = ../../config/bspwm;
    ".config/sxhkd".source = ../../config/sxhkd;
    ".config/polybar".source = ../../config/polybar;
  };

  home.stateVersion = "23.11";
}
