# nix-shell --command 'lualatex -interaction=nonstopmode cv.tex'
let
  nixpkgs = import <nixpkgs> {};
in
  nixpkgs.callPackage ./shell.nix {}