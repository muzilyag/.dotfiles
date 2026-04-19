{ ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 10000;
      path = "$HOME/.zsh_history";
      ignoreDups = true;
      share = true;
    };

    shellAliases = {
      n = "nvim";
      ls = "ls --color=auto";
      ll = "ls -la";
      rbnix = "cd ~/.dotfiles && git add . && sudo nixos-rebuild switch --flake .#vm"; 
    };

    initExtra = ''
      PROMPT="%F{green}%n@%m%f %F{blue}%~%f %F{yellow}%%%f "
      zstyle ':completion:*' menu select
    '';
  };
}
