double average(List ls) {
  int summ = 0;
  for (int i in ls) {
    summ = summ + i;
  }
  return summ / ls.length;
}

void main() {
  List nums = [1, 2, 3, 4];
  print(average(nums));
}
