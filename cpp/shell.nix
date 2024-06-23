let
    pkgs = import <nixpkgs> {};
in pkgs.mkShell {
    packages = with pkgs; [
        boost
        catch2
        cmake
        libuuid
    ];
}
