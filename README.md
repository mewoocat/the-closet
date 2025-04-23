Running
```sh
nix shell nixpkgs#darkhttpd --command sh -c "nix build -L .#.default && darkhttpd ./result"
```
