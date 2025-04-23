{
  name = "the-closet";
  version = "0.1";
  src = ./.;

  /*
  extraArgs = {
    foo = 2137;
    bar = "dupa";
    baz = arg1: arg2: ''
      here's arg1: ${arg1}
      and here's arg2: ${arg2}
    '';
  };
  */

  entries = [
    ./entry1.nix
  ];

  templates = [
    ./template1.nix 
  ];

  /*
  extraFiles = [
    "./data.txt" # equivalent to { source = ./data.txt; destination = "/"; }
    { source = "./image.png"; destination = "/assets/"; }
    { source = "./image2.png"; destination = "/assets/dupa.png"; }
    { source = "./data/*"; destination = "/assets/data/"; }
    { source = fetchurl { ... }; destination = "/"; }
  ];
  */
}
