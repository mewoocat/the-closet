{
  description = "The Closet, my personal website";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nte = {
      url = "git+https://git.poz.pet/poz/nte";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, ... } @ inputs: let
    system = "x86_64-linux";
    main = import ./main.nix;
  in {
    default = inputs.nte.functions.${system}.mkNteDerivation main;
  };
}
