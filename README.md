## CMDS

when changing cabal deps: `cabal2nix . > default.nix`

to build: `nix-build -attr project release.nix`
(the new executable is in bin/result/<executablename>

to open a shell: `nix-shell'
