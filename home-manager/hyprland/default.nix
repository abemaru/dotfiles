{
  pkgs,
  inputs,
  system,
  ...
}:
{
  imports = [
    ./dunst.nix

    ./gtk.nix

    ./hyprlock.nix
    ./hyprpanel.nix
    ./hypridle.nix

    ./keybinds.nix

    # launcher
    ./wofi.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${system}.hyprland;
  };

  home.packages = with pkgs; [
    brightnessctl # screen brightness
    grimblast # screenshot
    hyprpicker # color picker
    pamixer # pulseaudio mixer
    playerctl # media player control
    swww # wallpaper
    wayvnc # vnc server
    wev # key event watcher
    wf-recorder # screen recorder
    wl-clipboard # clipboard manager
  ];
}
