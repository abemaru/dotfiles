{
  pkgs,
  config,
  lib,
  ...
}:
let
  substituteStrings = import ../../lib/substituteStrings.nix;
  pwd = (import ./pwd.nix { inherit config; }).pwd;
in
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    extraPackages = with pkgs; [
      # Lua
      lua-language-server
      stylua

      # nix
      nil
      nixfmt-rfc-style

      # Go
      gopls

      # TypeScript
      nodePackages.eslint
      nodePackages.prettier
      nodePackages.typescript-language-server

      # Python
      ruff
      pyright

      # YAML
      yaml-language-server

      # TOML
      taplo

      # Docker
      nodePackages.dockerfile-language-server-nodejs

      # Telescope
      ripgrep
    ];

    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];

    programs.nixvim.extraLuaConfig = 
      let
        plugins =  with pkgs.vimPlugins; [
          vim-closetag
          gitsigns-nvim
          LazyVim
          nvim-lspconfig
	        nvim-cmp

          cmp-buffer
	        cmp-nvim-lsp
          cmp-path
          cmp-cmdline
          cmp_luasnip

	        nvim-treesitter
	        nvim-treesitter-textobjects
          nvim-web-devicons

          telescope-fzf-native-nvim
          telescope-nvim
	      ];
	      mkEntryFromDrv =
	      drv:
	      {
          name = "${lib.getName drv}";
          path = drv;
        };
        lazyPath = pkgs.linkFarm "lazy-plugins" (builtins.map mkEntryFromDrv plugins);
        lazyConfig = substituteStrings {
          file = ./init.lua;
          replacements = [
            {
	            old = "@lazyPath@";
	            new = "${lazyPath}";
	          }
	        ];
	      };
	      in
        ''
	        ${lazyConfig}
	      '';
      };

      xdg.configFile."nvim/lua/conf" = {
        source = config.lib.file.mkOutOfStoreSymlink "${pwd}/conf";
      };

      xdg.configFile."nvim/lua/plugins/" = {
        source = config.lib.file.mkOutOfStoreSymlink "${pwd}/plugins";
      };
}

