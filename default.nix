{ mkDerivation, aeson, base, servant-server, stdenv, warp }:
mkDerivation {
  pname = "nix-experiments";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ aeson base servant-server warp ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
