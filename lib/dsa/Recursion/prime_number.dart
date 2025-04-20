void main() {
  int num = 7;
  bool isPrime = true;

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime && num > 1) {
    print('$num is a prime number.');
  } else {
    print('$num is not a prime number.');
  }
}
