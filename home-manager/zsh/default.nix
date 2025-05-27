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

    # cmd finder
    fzf

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
