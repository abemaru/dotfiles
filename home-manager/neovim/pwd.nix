{
  config,
  ...
}:
let
  pwd = "${config.home.homeDirectory}/.dotfiles/pkgs/neovim";
in
{
  inherit pwd;
}
