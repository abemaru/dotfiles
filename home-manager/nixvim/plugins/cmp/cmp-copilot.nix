{
  programs.nixvim = {
    plugins = {
      copilot-cmp = {
        enable = true;
      };
      copilot-lua = {
        enable = true;
      };
    };

    extraConfigLua = ''
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    '';
  };
}
