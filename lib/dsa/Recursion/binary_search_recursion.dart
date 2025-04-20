void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int target = 3;

  int result = binarySearch(arr, target, 0, arr.length - 1);

  if (result != -1) {
    print('Element $target found at index $result.');
  } else {
    print('Element $target not found in the array.');
  }
}

int binarySearch(List<int> arr, int target, int left, int right) {
  if (left > right) {
    return -1;
  }

  int mid = (left + right) ~/ 2;

  if (arr[mid] == target) {
    return mid;
  }

  if (arr[mid] > target) {
    return binarySearch(arr, target, left, mid - 1);
  }

  return binarySearch(arr, target, mid + 1, right);
}
