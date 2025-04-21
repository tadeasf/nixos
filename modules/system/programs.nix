{ config, lib, pkgs, ... }:

{
  # System-wide program configurations
  programs = {
    direnv.enable = true;
    java.enable = true;
    adb.enable = true;
    firefox.enable = true;

    # Keep ZSH configuration at system level
    # You could also migrate this to home-manager
    zsh = {
      enable = true;
      ohMyZsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = [ "git" "docker" "fzf" ];
      };
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        c = "clear";
        e = "exit";
        v = "nvim";
        ls = "eza";
        l = "eza -la";
        lt = "eza -la --sort=modified";
        lsize = "eza -la --sort=size";
        rebuild = "sudo nixos-rebuild switch --flake .#tadeas-on-nixos";
        configure = "sudo nvim /etc/nixos/flake.nix";
        nix-install = "nix-env -iA";
        nix-search = "nix-env -qaP";
        nix-update = "nix-env -u";
        nix-list = "nix-env -q";
        nix-remove = "nix-env -e";
      };
      interactiveShellInit = ''
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

        # Enable autosuggestions
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh

        # Enable syntax highlighting
        source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

        # Initialize fzf
        source ${pkgs.fzf}/share/fzf/key-bindings.zsh
        source ${pkgs.fzf}/share/fzf/completion.zsh
      '';
    };
  };

  # Basic system packages (most will move to home-manager)
  environment.systemPackages = with pkgs; [
    wget curl vim neovim git
  ];
}
