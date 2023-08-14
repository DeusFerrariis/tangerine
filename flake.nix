{
  description = "QrEve";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          buildInputs = [ pkgs.bashInteractive ];
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}
