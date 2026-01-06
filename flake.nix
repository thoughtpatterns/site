{
  description = "Developer shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
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
        python = pkgs.python313;
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nushell
            python
            typst
            xmlstarlet
          ];

          shellHook = ''
            export PATH="$(realpath ./bin):$PATH"
            export TYPST_FEATURES='html'
          '';
        };
      }
    );
}
