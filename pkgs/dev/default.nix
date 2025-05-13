{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # LTS at 2025/05/12
    python311
    rye

    # LTS at 2025/05/13
    nodejs_22

    go
  ];
}
