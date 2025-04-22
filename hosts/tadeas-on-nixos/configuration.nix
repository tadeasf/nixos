{ config, pkgs, inputs, ... }:

{
  imports = [
    # Hardware configuration
    ./hardware-configuration.nix

    # Module imports
    ../../modules/system/boot.nix
    ../../modules/system/networking.nix
    ../../modules/system/i18n.nix
    ../../modules/system/desktop.nix
    ../../modules/system/audio.nix
    ../../modules/system/virtualization.nix
    ../../modules/system/databases.nix
    ../../modules/system/users.nix
    ../../modules/system/programs.nix
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable flakes and nix-command
  nix = {
    package = pkgs.nixVersions.stable;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  # Add this line to enable Home Manager backup files
  home-manager.backupFileExtension = "backup-before-home-manager";
    boot.loader.systemd-boot.configurationLimit = 10;  # Or use grub.configurationLimit if applicable

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.settings.auto-optimise-store = true;

  # Required system version
  system.stateVersion = "24.11";
}
