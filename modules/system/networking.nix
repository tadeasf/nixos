{ config, lib, pkgs, ... }:

{
  # Hostname and networking configuration
  networking.hostName = "tadeas-on-nixos";
  networking.networkmanager.enable = true;
}
