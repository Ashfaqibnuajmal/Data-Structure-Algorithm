void main() {
  List<int> array = [12, 35, 1, 10, 34, 1];
  int first = -1, second = -1, third = -1;

  for (int i = 0; i < array.length; i++) {
    if (array[i] > first) {
      third = second;
      second = first;
      first = array[i];
    } else if (array[i] > second && array[i] != first) {
      third = second;
      second = array[i];
    } else if (array[i] > third && array[i] != second) {
      third = array[i];
    }
  }

  print("3rd Largest Element: $third"); // Output: 12
}
