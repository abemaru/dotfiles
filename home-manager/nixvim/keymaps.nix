{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "b]";
        action = "<cmd>BufferLineMoveNext<cr>";
        options = {
          desc = "go to the next buffer";
        };
      }
      {
        mode = "n";
        key = "b[";
        action = "<cmd>BufferLineMovePrev<cr>";
        options = {
          desc = "go to the previous buffer";
        };
      }
    ];
  };
}
