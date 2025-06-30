void apply(int a, int b, int Function(int, int) fn) {
  print(fn(a, b));
}

Function sayHello(String name) {
  return () => print('Hello $name');
}

void main() {
  apply(4, 2, (x, y) => x + y);
  apply(4, 2, (x, y) => x * y);

  var greet = sayHello('Ashfaq');
  greet();
}
