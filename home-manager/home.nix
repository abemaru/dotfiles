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
    ./hyprland
    ./wezterm
    ./neovim
    ./dev
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
  ];

  programs.starship = {
      enable = true;
      settings = {
          add_newline = true;
      };
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
