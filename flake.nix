{
  description = "ajmasia's Neovim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = { nixpkgs, nixvim, flake-parts, ... } @ inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "aarch64-linux" "x86_64-linux" "aarch64-darwin" "x86_64-darwin" ];

      perSystem = { self', inputs', system, pkgs, ... }:
        let
          nixvim' = nixvim.legacyPackages.${system};

          default' = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./module/default.nix;
          };

          rolling' = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./module/rolling.nix;
          };
        in
        {
          packages = rec {
            default = default';
            rolling = rolling';
          };
        };
    };
}
