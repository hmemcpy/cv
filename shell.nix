{ pkgs ? import <nixpkgs> {} }: with pkgs;

mkShell {
  FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ libertine ]; };
  buildInputs = [
    (texlive.combine {
        inherit (texlive)
        scheme-medium
        fontawesome
        preprint
        lastpage
        titlesec
        libertine;
      })
  ];
}
