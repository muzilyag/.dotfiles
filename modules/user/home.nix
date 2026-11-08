{ config, pkgs, unstable, username, ... }: {
  imports = [
    ./wm.nix
    ./theme.nix
    ./programs
  ];

  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERMINAL = "kitty";
  };

  home.packages = with pkgs; [
    neovim
    unstable.tree-sitter
    telegram-desktop
    feh
    flameshot
    libnotify
    pamixer
    brightnessctl
    xorg.xsetroot
    (polybar.override { pulseSupport = true; })
    font-awesome
    material-icons
    killall
    jq
    xfce.thunar
    xfce.thunar-archive-plugin
    xarchiver
    gcc
    gnumake
    cmake
    python3
    ripgrep
    fd
    unzip
    wget
    nodejs_20
    xclip
    docker-compose
    gh
    php
    python3Packages.pynvim
    lua-language-server
    clang-tools
  ];

  home.file = {
    ".config/clangd/config.yaml".source = pkgs.writeText "clangd-config" ''
      CompileFlags:
        Add:
          - "-idirafter${pkgs.glibc.dev}/include"
          - "-isystem${pkgs.gcc.cc.lib}/include/c++"
          - "-isystem${pkgs.stdenv.cc.cc.lib}/lib/gcc/${pkgs.stdenv.hostPlatform.config}/${pkgs.stdenv.cc.cc.version}/include"
        Index:
          Background: Build
    '';

    ".config/bspwm".source = ../../config/bspwm;
    ".config/sxhkd".source = ../../config/sxhkd;
    ".config/polybar".source = ../../config/polybar;
    ".config/nvim".source = ../../config/nvim;
  };

  home.stateVersion = "23.11";
}
