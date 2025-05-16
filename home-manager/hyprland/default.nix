{
  pkgs,
  inputs,
  system,
  ...
}:
{
  imports = [
    ./settings.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${system}.hyprland;
  };

  home.packages =
    (with pkgs; [
      brightnessctl
      grimblast
      hyprlock
      hyprpicker
      pamixer
      playerctl
      swww
      wayvnc
      wev
      wf-recorder
      wl-clipboard
    ])
    ++ [
      inputs.hyprsome.packages.${pkgs.system}.default
    ];

  xdg.userDirs.createDirectories = true;
}
