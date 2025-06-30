void mergeSort(List<int> arr) {
  if (arr.length <= 1) return;

  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  mergeSort(left);
  mergeSort(right);

  int i = 0, j = 0, k = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  mergeSort(arr);
  print(arr); // Output: [11, 12, 22, 25, 34, 64, 90]

  // int number = 2514;
  // List<int> digits = number.toString().split('').map(int.parse).toList();
}
