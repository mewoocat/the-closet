{
  title,
  content,
  ...
}: {
  name = "card";
  format = "html";
  output = /*html*/''
    <div>
      <h1>${title}</h1>
      <p>${content}</p>
    </div>
  '';
}
