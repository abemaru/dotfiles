{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    neovim

    # lua
    lua-language-server
    stylua

    # Go
    gopls

    # Python
    ruff
    pyright

    # HTML/CSS
    nodePackages.vscode-langservers-extracted

    # JS/TS/Frameworks
    biome
    deno
    nodePackages.eslint
    nodePackages.prettier
    nodePackages.typescript-language-server

    # Nix
    nil
    nixfmt-rfc-style
  ];

  programs.zsh.shellAliases = {
    v = "nvim";
    vi = "nvim";
    vim = "nvim";
  };
}
