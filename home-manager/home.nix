{
  pkgs,
  ...
}:
{
  home = {
    username = "abemaru";
    homeDirectory = "/home/abemaru";
  };

  imports = [
    ./dev
    ./gh
    ./hyprland
    ./nixvim
    ./starship
    ./wezterm
    ./zsh
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

    discord
    slack

    obsidian
    libreoffice-qt6-fresh

    gimp
    krita

    mpv
    spotify

    gtop
  ];

  programs.zsh.enable = true;

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
