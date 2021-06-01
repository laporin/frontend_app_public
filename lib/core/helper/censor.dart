String censorUsername(String username) {
  var first = username[0];
  var rest = username.substring(1);
  for (int i = 0; i < rest.length; i++) {
    first += '*';
  }
  return first;
}
