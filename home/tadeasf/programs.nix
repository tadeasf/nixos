{ config, lib, pkgs, ... }:

{
  # User-specific programs and configurations

  # Program-specific configurations
  programs = {
    git = {
      enable = true;
      userName = "Tadeas Fort";
      userEmail = "business@tadeasfort.com";
    };

    # Terminal emulators
    alacritty.enable = true;
    wezterm.enable = true;
  };

  # User packages - moved from system configuration
  home.packages = with pkgs; [
    # GUI Applications
    thunderbird
    chromium
    zed-editor
    google-chrome
    code-cursor
    steam
    haruna
    inkscape
    xfce.thunar
    libsForQt5.dolphin
    nemo
    warp
    vscode

    # Basic utilities
    eza fzf unzip

    # Shell enhancements
    zsh-autosuggestions zsh-syntax-highlighting zsh-powerlevel10k

    # Terminal tools
    zellij tmux alacritty wezterm ghostty yazi

    # Version control
    git-lfs gitui lazygit gh

    # Programming languages and tools
    go python313 nodejs_22 bun
    rustup
    gcc clang llvm
    cmake ninja meson pkg-config gnumake
    gdb lldb
    jdk23
    xclip
    gnumake
    appimage-run
    davinci-resolve
    typescript

    # Development tools
    mise chezmoi
    docker kubernetes kubectl helm
    terraform ansible
    postman insomnia
    dbeaver-bin mongodb-compass
    jetbrains.idea-community
    jetbrains.webstorm
    jetbrains.pycharm-community
    android-studio
    flutter

    # Creative software
    gimp krita inkscape
    darktable rawtherapee digikam
    kdenlive openshot-qt
    blender upscayl
    audacity obs-studio handbrake

    # Office/Productivity
    libreoffice obsidian
    spotify vlc mpv
    calibre
    proton-pass
    plex-desktop

    # System tools
    htop btop iotop
    fastfetch neofetch ipfetch freshfetch ghfetch kubefetch
    gnome-extension-manager
    remmina barrier

    # Virtualization and containers
    distrobox distrobox-tui boxbuddy
    podman podman-compose podman-desktop
    virt-manager qemu

    # Security
    keepassxc bitwarden

    # Communication
    discord slack element-desktop

    # Additional tools
    synapse
    zoxide fish gnomecast

    # Design tools
    figma-linux
  ];
}
