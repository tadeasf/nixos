{ config, lib, pkgs, ... }:

{
  # User account configuration
  users.users.tadeasf = {
    isNormalUser = true;
    description = "Tadeas Fort";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    shell = pkgs.zsh;

    # Packages that will remain at system level
    # Most user packages will move to home-manager
    packages = with pkgs; [];
  };
}
