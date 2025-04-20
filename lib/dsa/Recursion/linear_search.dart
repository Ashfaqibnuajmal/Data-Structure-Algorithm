void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int target = 3;
  bool found = false;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      found = true;
      break;
    }
  }

  if (found) {
    print('Element $target found in the array.');
  } else {
    print('Element $target not found in the array.');
  }
}
