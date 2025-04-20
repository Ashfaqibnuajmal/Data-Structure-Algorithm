int findLargest(List<int> arr, int n) {
  if (n == 1) return arr[0]; // Base case for largest
  return arr[n - 1] > findLargest(arr, n - 1)
      ? arr[n - 1]
      : findLargest(arr, n - 1);
}

int findSecondLargest(List<int> arr, int n, int largest) {
  if (n == 0) return -1; // If no second largest exists
  if (arr[n - 1] < largest) {
    return arr[n - 1] > findSecondLargest(arr, n - 1, largest)
        ? arr[n - 1]
        : findSecondLargest(arr, n - 1, largest);
  }
  return findSecondLargest(arr, n - 1, largest);
}

void main() {
  List<int> array = [12, 35, 1, 10, 34, 1];
  int largest = findLargest(array, array.length);
  int secondLargest = findSecondLargest(array, array.length, largest);
  print("Second Largest: $secondLargest"); // Output: Second Largest: 34
}
