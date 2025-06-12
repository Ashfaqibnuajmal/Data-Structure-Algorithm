// int add(int a, int b) {
//   return a + b;
// }

// void main() {
//   print(add(5, 3)); // Output: 8
// }

// void printHello() {
//   print("Hello, World!");
// }

// void main() {
//   printHello(); // Output: Hello, World!
// }

// void greet(String name, [int age = 0]) {
//   print('Hello, $name! You are $age years old.');
// }

// void main() {
//   greet('Alice', 25); // Output: Hello, Alice! You are 25 years old.
//   greet('Bob'); // Output: Hello, Bob! You are 0 years old.
// }

void greet({required String name, int age = 0}) {
  print('Hello, $name! You are $age years old.');
}

void main() {
  greet(name: 'Alice', age: 25); // Output: Hello, Alice! You are 25 years old.
  greet(name: 'Bob'); // Output: Hello, Bob! You are 0 years old.
}
