void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  selectionSort(arr);
  print(arr); // Output: [11, 12, 22, 25, 34, 64, 90]
}
