{
  pkgs,
  inputs,
  system,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${system}.hyprland;
  };

  home.packages = with pkgs; [
    swww
  ];

  xdg.userDirs.createDirectories = true;
}
