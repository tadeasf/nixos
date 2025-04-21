{ config, lib, pkgs, ... }:

{
  # Database services
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
  };

  # Uncomment to enable MongoDB
  # services.mongodb.enable = true;
}
