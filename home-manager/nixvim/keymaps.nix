{
  programs.nixvim = {
    keymaps = [
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
      {
        mode = "n";
        key = "<C-t>";
        action = "<cmd>Neotree toggle<cr>";
        options = {
          desc = "Toggle Neotree";
        };
      }
    ];
  };
}
