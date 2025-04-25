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
          <a class="button" href="/index.html">Home</a>
          <a class="button" href="/entries/photoAlbum.html">Photo Album</a>
        </div>

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

        <div class="button-box">
          <a href="">
            <img src="/assets/gameboy_advance_net.gif">
          </a>
          <a href="https://www.w3schools.com/html/">
            <img src="/assets/html-learn-it-today.gif">
          </a>
          <img src="/assets/i-like-computer.png">
          <a href="https://neovim.io/">
            <img src="/assets/made-with-neovim.gif">
          </a>
          <a href="https://git.poz.pet/poz/nte">
            <img src="/assets/powered-by-nte.png">
          </a>
          <img src="/assets/rainbow.gif">
          <a href="https://nixos.org/">
            <img src="/assets/powered-by-nixos.gif">
          </a>
          <img src="/assets/bestviewedcomp.gif"> 
          <img src="/assets/3ds.png">
          <img src="/assets/bvwe.gif">
          <img src="/assets/gb.gif">
          <img src="/assets/gba_now.png">
          <img src="/assets/gbc.gif">
          <img src="/assets/goodnight.gif">
          <img src="/assets/n64.gif">
          <img src="/assets/psbutton.gif">
          <img src="/assets/sanehtml.gif">
          <img src="/assets/wii_button.gif">
          <iframe src="//incr.easrng.net/badge?key=mewoocat" style="background: url(//incr.easrng.net/bg.gif)" title="increment badge" width="88" height="31" frameborder="0"></iframe>
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
