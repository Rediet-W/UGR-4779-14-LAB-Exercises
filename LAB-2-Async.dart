Future<void> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
}

void main() async {
  await fetchUserData();
}
