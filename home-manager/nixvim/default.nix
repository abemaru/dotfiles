_: {
  imports = [
    ./settings.nix
    ./keymaps.nix

    # cmp
    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/cmp-copilot.nix
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/lspkind.nix
    ./plugins/cmp/schemastore.nix

    # editor
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/navic.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/treesitter.nix

    #lsp
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/lsp.nix

    # snippets
    ./plugins/snippets/luasnip.nix

    # ui
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/noice.nix
    ./plugins/ui/startup.nix

    # utils
    ./plugins/utils/mini.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/toggleterm.nix
    ./plugins/utils/web-devicons.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
