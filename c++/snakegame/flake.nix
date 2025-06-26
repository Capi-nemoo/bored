{
  description = "FTXUI dev environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.default = pkgs.mkShell {
      name = "ftxui-shell";
      nativeBuildInputs = with pkgs; [ cmake git ];

      buildInputs = with pkgs; [
        gcc
        libstdcxx
        ncurses
      ];

      shellHook = ''
        echo "FTXUI dev environment ready ✨"
        echo "Build with: cmake -B build -S . && cmake --build build"
      '';
    };
  };
}

