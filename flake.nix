{
  description = "My neovim config for nixos with lazy.nvim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };

        runtimeDeps = with pkgs; [
          git
          tree-sitter
          gcc
          gnumake
          curl
          ripgrep
          fd
          imagemagick

          wl-clipboard
          xclip

          fish

          clang-tools
          gopls
          pyright
          zls
          rust-analyzer
          nixd
          lua-language-server
          stylua
          black
          go
          rustfmt
          zig_0_16
        ];

        wrappedNeovim = pkgs.symlinkJoin {
          name = "nvim-wrapped";
          paths = [ pkgs.neovim ];
          buildInputs = [ pkgs.makeWrapper ];
          postBuild = ''
            wrapProgram $out/bin/nvim \
              --prefix PATH : ${pkgs.lib.makeBinPath runtimeDeps}
          '';
        };
      in
      {
        packages.default = wrappedNeovim;

        devShells.default = pkgs.mkShell {
          packages = [ wrappedNeovim ] ++ runtimeDeps;
        };
      }
    )
    // {
      nixosModules.default = { pkgs, ... }: {
        environment.systemPackages = [
          self.packages.${pkgs.stdenv.hostPlatform.system}.default
        ];

        fonts.packages = with pkgs; [
          nerd-fonts.jetbrains-mono
        ];
      };
    };
}
