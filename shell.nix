{ sources ? import ./nix/sources.nix
}:

let deps = import ./deps.nix { inherit sources; };
in
deps.pkgs.mkShell {
  buildInputs = [
    deps.dhall-json
    deps.pkgs.nodejs
    deps.spago
    deps.purescript
  ];
}
