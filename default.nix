{ mkDerivation, base, stdenv, turtle }:
mkDerivation {
  pname = "nix-experiments";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base turtle ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
