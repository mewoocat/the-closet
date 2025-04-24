{
  name,
  location,
  info,
  cards,
  ...
}: let

  cardBlock = card: /*html*/''
    <div>
      <h1>${card.title}</h1>
      <p>${card.content}</p>
    </div>
  '';

in {
  name = "index";
  format = "html";

  output = /*html*/''
    <!DOCTYPE html>
    <html>
      <head>
        <title>eXia's closet</title>
        <link rel="stylesheet" href="/style.css"/>
        <link rel="icon" type="image/x-icon" href="/assets/pfp.ico">
      </head>
      <body>
        <div class="h-box">
          <img src="/assets/pfp.jpg" width="100" height="100">
          <p>
            Hello, I'm ${name}! Welcome to ${location}.<br>
            I'm a 24 year old Software Developer (i think).  I mostly work in Typescript/C++, but I also enjoy Nix/OS in my free time.
          </p>
        </div>

        <div class="v-box">
          <h2>Some of My Interests</h2>
          <hr>
          <h4>Software<h4>
          <p> Nix/NixOS ofc :3, C/C++, AGS/GTK, NeoVim... </p>
          <h4>Hardware<h4>
          <p> GameBoys, CRTs, Keyboards, Soldering, ... </p>
          <h4>Video Games<h4>
          <p> Armored Core, Mega Man, WipeOut, TitanFall, Tetris, Animal Crossing, ... </p>
          <h4>Music<h4>
          <p> Ghost, Hello Meteor, Pendulum, ... </p>
        </div>

        <div class="v-box">
          <h2>Some Projects</h2>
          <hr>
          <h4>
            <a href="https://github.com/mewoocat/NixOS">NixOS flake</a>
          </h4>
          <h4>
            <a href="https://github.com/mewoocat/nvim-nix">NeoVim config</a>
          </h4>
          <h4>
            <a href="https://github.com/mewoocat/the-closet">This site</a>
          </h4>
        </div>

        <div class="h-box">
          <img src="/assets/gameboy_advance_net.gif">
          <img src="/assets/html-learn-it-today.gif">
          <img src="/assets/i-like-computer.png">
          <img src="/assets/made-with-neovim.gif">
          <img src="/assets/powered-by-nte.png">
          <img src="/assets/rainbow.gif">
          <img src="/assets/powered-by-nixos.gif">
        </div>

        <div class="footer">
          <a class="button" href="https://nixwebr.ing/prev/eXia">Previous</a>
          <a class="button" href="https://nixwebr.ing">Nix Webring</a>
          <a class="button" href="https://nixwebr.ing/next/eXia">Next</a>
        </div>
      </body>
    </html>
  '';
}
