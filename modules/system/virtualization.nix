{ config, lib, pkgs, ... }:

{
  # Virtualization and container services
  virtualisation = {
    docker.enable = true;
    libvirtd.enable = true;
  };
}
