{
  name,
  location,
  info,
  ...
}: {
  name = "greeting";
  format = "txt";

  output = ''
    Hello ${name}! Welcome to ${location}.

    Here's some more information:
    ${info}
  '';
}
