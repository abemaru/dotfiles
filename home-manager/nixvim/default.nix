_: {
  imports = [
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/lsp.nix

    ./plugins/utils/telescope.nix
  ];

  programs.nixvim = {
    enable = true;
  };
}
