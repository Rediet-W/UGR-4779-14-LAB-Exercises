void main() {
  int f1 = 1;
  int f2 = 1;

  for (int i = 1; i <= 10; i++) {
    if (i == 1) {
      print(1);
    } else if (i == 2) {
      print(1);
    } else {
      print(f1 + f2);
      int curr = f1 + f2;
      f1 = f2;
      f2 = curr;
    }
  }
}
