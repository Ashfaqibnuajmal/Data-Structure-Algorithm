bool isPrime(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print(isPrime(7)); // true
  print(isPrime(10)); // false
}
