{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    vscode

    claude-code

    # LTS at 2025/05/12
    python311
    uv
    rye

    # LTS at 2025/05/13
    nodejs_22

    yarn
    pnpm
    bun
    deno

    go

    # cloud
    awscli2
    terraform

    # sqls
    postgresql
  ];

  programs.git = {
    enable = true;
    userName = "abemaru";
    userEmail = "awebo.abemaru@gmail.com";
  };
}
