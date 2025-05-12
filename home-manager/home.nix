{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "abemaru";
    homeDirectory = "/home/abemaru";
  };

  imports = [
    ../pkgs/hyprland
    ../pkgs/wezterm
    ../pkgs/neovim
    ../pkgs/dev
  ];

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };


  home.packages = with pkgs; [
    neofetch
    vscode

    discord
    
    gh
  ];

  programs.git = {
    enable = true;
    userName = "abemaru";
    userEmail = "awebo.abemaru@gmail.com";
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
