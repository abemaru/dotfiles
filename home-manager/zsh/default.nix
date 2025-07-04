{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # substitute of cat
    bat

    # substitute of ls
    eza

    # better than curl when using http/https
    httpie

    # cmd finder
    fzf

    # env, dev tools, task runner
    mise

    # lazy's
    lazygit
    lazydocker

    # substitute for grep
    ripgrep

    # better than cd command
    z-lua
  ];

  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      cat = "bat";
      ls = "eza -al --icons";
      tree = "eza -al --icons --tree";
      z = "cd";
      v = "nvim";
    };

    initContent =
      # bash
      ''
        function fzf-select-history() {
          BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER" --reverse)
          CURSOR=$#BUFFER
          zle reset-prompt
        }
        zle -N fzf-select-history
        bindkey '^r' fzf-select-history
      '';
  };
}
