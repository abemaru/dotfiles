{
  pkgs,
  ...
}:
{
  fonts = {
    packages = with pkgs; [
      # nerd-fonts
      nerd-fonts.droid-sans-mono
      nerd-fonts._0xproto

      hackgen-nf-font

      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = [
          "Noto Serif CJK JP"
          "Noto Color Emoji"
        ];
        sansSerif = [
          "Noto Sans CJK JP"
          "Noto Color Empji"
        ];
        monospace = [
          "JetBrainsMono Nerd Font"
          "Noto Color Emoji"
        ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
