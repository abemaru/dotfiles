{ inputs, ... }:
{
  hardware.uinput.enable = true;
  users.groups.uinput.members = [ "abemaru" ];
  users.groups.input.members = [ "abemaru" ];

  imports = [ inputs.xremap.nixosModules.default ];
  services.xremap = {
    userName = "abemaru";
    serviceMode = "user";
    config = {
      modmap = [
        {
          name = "CapsLock, nobody needs you";
          remap = {
            CapsLock = "Ctrl_L";
          };
        }
      ];
      keymap = [
        {
          name = "Better Backspace";
          exact_match = true;
          application = {
            not = [
              "Alacritty" # FIXME
              "kitty" # FIXME
              "org.wezfurlong.wezterm.org.wezfurlong.wezterm"
            ];
          };
          remap = {
            C-h = "Backspace";
          };
        }
      ];
    };
  };
}
