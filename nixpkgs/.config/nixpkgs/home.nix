{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ben";
  home.homeDirectory = "/home/ben";

  home.packages = [
  # kubernetes
	pkgs.k9s 
  pkgs.kubectl 
	pkgs.krew 
	pkgs.devspace

	# programming languages
	pkgs.go
	pkgs.rustup

	# development tools
	pkgs.helix # my favourite CLI editor, but no plugin system yet so I use neovim more often. 
	pkgs.lazygit # a nice git TUI
	pkgs.doctl # digital ocean cli, useful for throwaway cloud vms or cheap serverless functions.
	pkgs.gh #github cli
	pkgs.lima

	# charm.sh tools
  pkgs.gum
	pkgs.glow
	pkgs.skate
  pkgs.soft-serve

	# general tools
  pkgs.tmux
	pkgs.slack
	pkgs.starship #multi-shell customizable prompt
	pkgs.exa #more modern 'ls'
	pkgs.ripgrep #more modern 'grep'
	pkgs.fzf # nifty fuzzy finder
	pkgs.btop #better than top, better than htop
	pkgs.stow # dotfile manager
	pkgs.broot # like 'tree' but better, respects .gitignore in output and allows for navigation around filesystem.
	pkgs.brave

	# fun
	pkgs.thefuck # type 'fuck' after making a typo on a shell command.
	pkgs.spotifyd # spotify daemon, needed for spotify TUI
	pkgs.spotify-tui # run spotify in the terminal, I only use this on Arch, not macOS
  ];


  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
