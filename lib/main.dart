Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data loaded";
}

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulate delay
    yield i;
  }
}

void main() async {
  print("Counting:");
  await for (int number in countStream()) {
    print(number);
  }
  print("Start");
  String data = await fetchData();
  print(data);
  print("End");
}
