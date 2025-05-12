{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    python311
  ];
}
