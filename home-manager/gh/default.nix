{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    gh
  ];

  programs.gh = {
    enable = true;
    gitCredentialHelper = {
        enable = true;
    };
    extensions = with pkgs; [
      gh-dash
    ];
  };
}
