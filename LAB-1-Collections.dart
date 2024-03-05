int highest(List<int> ls) {
  int max = ls.reduce((Value, Element) => Value > Element ? Value : Element);
  return max;
}

void main() {
  List<int> ls = [5, 70, 12, 34, 2];
  print(highest(ls));
}
