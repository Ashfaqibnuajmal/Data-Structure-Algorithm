void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int target = 3;
  int left = 0;
  int right = arr.length - 1;

  bool found = false;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == target) {
      found = true;
      break;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  if (found) {
    print('Element $target found in the array.');
  } else {
    print('Element $target not found in the array.');
  }
}
