{ pkgs }:
pkgs.stdenv.mkDerivation rec {
  name = "goldfish-${version}";
  version = "0.0.1";
  buildInputs = [
    pkgs.xmake
  ];
  src = pkgs.fetchgit { 
    url = "https://github.com/LiiiLabs/goldfish"; 
    rev = "032e07a153f8dd3374bf5fe81c7619be7d30d6b5";
    sha256 = "sha256-CC9hnrdNvR4pvMem0XesLpdclEDjVEmeVNGrTT+RGl4=";
    };

  buildPhase = " xmake b goldfish ";
  installPhase = " 
    mkdir -p $out/bin
    mv bin/goldfish $out/bin";
}
