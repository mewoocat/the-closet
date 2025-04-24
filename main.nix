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
    ./index.nix
  ];

  templates = [
    ./templates/index.nix 
    #./templates/card.nix
  ];

  extraFiles = [
    { source = ./css/style.css; destination = "/style.css"; }
    { source = "./assets/*"; destination = "/assets/"; }
    /*
    "./data.txt" # equivalent to { source = ./data.txt; destination = "/"; }
    { source = "./image.png"; destination = "/assets/"; }
    { source = "./image2.png"; destination = "/assets/dupa.png"; }
    { source = "./data/*"; destination = "/assets/data/"; }
    { source = fetchurl { ... }; destination = "/"; }
    */
  ];
}
