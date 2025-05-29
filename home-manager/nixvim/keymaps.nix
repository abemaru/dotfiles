{
  programs.nixvim = {
    keymaps = [
      # BufferLine
      {
        mode = "n";
        key = "<C-h>";
        action = "<cmd>BufferLineCycleNext<cr>";
        options = {
          desc = "go to the next buffer";
        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<cmd>BufferLineCyclePrev<cr>";
        options = {
          desc = "go to the previous buffer";
        };
      }
      # NeoTree
      {
        mode = "n";
        key = "<C-t>";
        action = "<cmd>Neotree toggle<cr>";
        options = {
          desc = "Toggle Neotree";
        };
      }
      # Telescope
      {
        mode = "n";
        key = "<C-f>";
        action = "<cmd>Telescope find_files<cr>";
        options = {
          desc = "Telescope find files";
        };
      }
      {
        mode = "n";
        key = "<C-g>";
        action = "<cmd>Telescope live_grep<cr>";
        options = {
          desc = "Telescope live grep";
        };
      }
    ];
  };
}
