{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "simple-env";
  targetPkgs = pkgs: (with pkgs; [
    zlib
    libglvnd
    libGL
    libGLU
    freeglut
    glibc
    gcc
    graphviz
    ghc
    cabal-install
  ]);
  multiPkgs = pkgs: (with pkgs; [
    udev
    alsa-lib
  ]);
  runScript = "bash";
}).env

