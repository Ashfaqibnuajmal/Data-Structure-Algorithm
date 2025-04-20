void main() {
  int n = 5;
  for (int i = 0; i < n; i++) {
    print(fibonacci(i)); // Prints Fibonacci sequence for first 5 numbers
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
