void binarySearchAndReplace(List<int> arr, int target) {
  int left = 0, right = arr.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == target) {
      arr[mid] = 0; // Replace the target number with 0
      print("Number replaced with 0");
      return;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  print("Number not found");
}

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int target = 30;

  binarySearchAndReplace(numbers, target);
  print(numbers); // Output: [10, 20, 0, 40, 50]
}
