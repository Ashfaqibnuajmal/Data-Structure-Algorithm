enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void main() {
  Day today = Day.Wednesday;

  print('Today is: $today');

  if (today == Day.Saturday || today == Day.Sunday) {
    print('It\'s the weekend!');
  } else {
    print('It\'s a weekday.');
  }

  print('\nAll days:');
  for (var day in Day.values) {
    print(day);
  }
}
