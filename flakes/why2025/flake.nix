{
  description = "A flake for developing the WHY2025 badge";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs}: let 
    nixpkgs-esp-dev = builtins.fetchGit {
      url = "https://github.com/mirrexagon/nixpkgs-esp-dev.git";
    };
    overlays = [
      (import "${nixpkgs-esp-dev}/overlay.nix")
    ];
    pkgs = import nixpkgs { 
      inherit overlays;
    };
  in {
    devShells."x86_64-linux".default = pkgs.mkShell {
      buildInputs = with pkgs; [
        # Basic build tools
        esp-idf-full

        # Dependencies
      ];
      nativeBuildInputs = with pkgs; [
        pkg-config
      ];
    };
  };
}
