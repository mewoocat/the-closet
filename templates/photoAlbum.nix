{
  photos,
  ...
}: let
  photoElement = photo: /*html*/''
    <img src="${photo}" width="200px">
  '';
in {
  name = "photoAlbum";
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

        <div class="photoAlbum">
          ${builtins.concatStringsSep "" (map photoElement photos)}        
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
