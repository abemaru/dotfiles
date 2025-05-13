{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    vscode
    # LTS at 2025/05/12
    python311
    rye

    # LTS at 2025/05/13
    nodejs_22

    go
  ];

  programs.git = {
    enable = true;
    userName = "abemaru";
    userEmail = "awebo.abemaru@gmail.com";
  };

  programs.starship = {
      enable = true;
      settings = {
          add_newline = true;
      };
  };
}
