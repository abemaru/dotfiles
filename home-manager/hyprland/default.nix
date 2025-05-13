{
  inputs,
  pkgs,
  ...
}: {

  imports = [
    ./key-binds.nix
    ./wofi.nix
  ];

  home.packages = with pkgs; [
    hyprland
    hyprsome

    brightnessctl
    grimblast
    hyprpicker
    pamixer
    playerctl
    swww
    wayvnc
    wev
    wf-recorder
    wl-clipboard
  ];

  wayland.windowManager.hyprland.enable = true;
}
