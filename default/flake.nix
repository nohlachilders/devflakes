{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        systems.url = "github:nix-systems/default";
        flake-utils = {
            url = "github:numtide/flake-utils";
            inputs.systems.follows = "systems";
        };
    };

    outputs = { self, nixpkgs, flake-utils, ... } @ inputs:
        flake-utils.lib.eachDefaultSystem (system: let
            pkgs = import nixpkgs {
                inherit system;
            };
        in {
            packages = {
            };

            devShells.default = pkgs.mkShell {
                packages = with pkgs; [
                    hello
                ];
            };
        }
        );
}
