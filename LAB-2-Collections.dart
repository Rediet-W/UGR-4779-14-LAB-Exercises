void map(Map m) {
  List k = [];
  List v = [];
  m.forEach((key, value) {
    k.add(key);
    v.add(value);
  });
  print('keys: $k');
  print('values: $v');
}

void main() {
  var m = {'a': 1, 'b': 2, 'c': 3};
  map(m);
}
