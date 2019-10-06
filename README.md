## CMDS

when changing cabal deps: `cabal2nix . > default.nix`

to build: `nix-build -attr project release.nix`
(the new executable is in bin/result/<executablename>

to open a shell: `nix-shell'

to add a specific version of a package: `cabal2nix cabal://turtle-1.3.2 > turtle.nix`
