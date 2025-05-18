{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      extensions = {
        file-browser = {
          enable = true;
        };
        fzf-native = {
          enable = true;
        };
      };
      settings = {
        defaults = {
          layout_config = {
            horizontal = {
              prompt_position = "top";
            };
          };
          sorting_strategy = "ascending";
          case_mode = "smart_case";
        };
      };
    };
    extraConfigLua = ''
      require("telescope").setup{
        pickers = {
          colorscheme = {
            enable_preview = true
          }
        }
      }
    '';
  };
}
