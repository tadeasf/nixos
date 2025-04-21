{ config, lib, pkgs, ... }:

{
  # X11 and Desktop environment configuration
  services.xserver = {
    enable = true;

    # Enable GNOME
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    # Configure keymap
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  # Enable printing
  services.printing.enable = true;
}
