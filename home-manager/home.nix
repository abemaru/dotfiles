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
    ../pkgs/wezterm
    ../pkgs/hyprland
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

    gh # github cli
  ];

  programs.git = {
    enable = true;
    userName = "abemaru";
    userEmail = "awebo.abemaru@gmail.com";
  };

  nixpkgs.config.allowUnfree = true;
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
