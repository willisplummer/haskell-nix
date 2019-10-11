{ mkDerivation, aeson, base, servant-server, stdenv, wai-logger
, warp
}:
mkDerivation {
  pname = "nix-experiments";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base servant-server wai-logger warp
  ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
