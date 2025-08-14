{
  description = "A flake for rust development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable}: let 
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
    pkgs-unstable = nixpkgs-unstable.legacyPackages."x86_64-linux";
  in {

    devShells."x86_64-linux".default = pkgs.mkShell {
      buildInputs = with pkgs; [
        # Basic build tools
        cargo
        rustc
        rustfmt
        clippy
        rust-analyzer

        # Dependencies
      ];
      nativeBuildInputs = with pkgs; [
        pkg-config
      ];
      env.RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
    };
  };
}
