void remove(List ls) {
  Set distinct = new Set();
  distinct.addAll(ls);
  print(distinct);
}

void main() {
  List ls = [1, 2, 3, 1, 2, 3];
  remove(ls);
}
