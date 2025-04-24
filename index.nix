{
  getEntry,
  applyTemplate,
  ...
}: {
  template = "index";

  name = "eXia";
  location = "my closet";
  info = ''
    the what?
  '';
  cards = /*html*/''
    <div>
      ${(applyTemplate (import ./templates/card.nix) (import ./entries/interests.nix))}
      ${(getEntry ./entries/projects.nix).content}
    </div>
  '';
}
