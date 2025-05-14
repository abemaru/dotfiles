{
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  # Install Programs
  programs.firefox.enable = true;
  programs.zsh.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
  ];
}
