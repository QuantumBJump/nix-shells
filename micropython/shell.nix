let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
    packages = [
        (pkgs.python39.withPackages (python-pkgs: [
            python-pkgs.wasmer
            python-pkgs.wasmerPackages.wasmer-compiler-cranelift
            python-pkgs.pygame
            python-pkgs.requests
        ]))
        pkgs.pipenv
        pkgs.mpremote
    ];
}
