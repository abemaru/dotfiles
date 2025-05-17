{
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  security.pam.services =
    let
      enableKeyrings = {
        enableGnomeKeyring = true;
        kwallet.enable = true;
      };
    in
    {
      login = enableKeyrings;
      hyprlock = enableKeyrings;
    };

  programs.dconf.enable = true;
  xdg.portal.enable = true;

  services.xremap.withWlroots = true; # for xremap to work with wlroots
  services = {
    upower.enable = true;
    power-profiles-daemon.enable = true;
  };
}
