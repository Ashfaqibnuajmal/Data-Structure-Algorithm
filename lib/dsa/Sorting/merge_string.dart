void mergeSort(List<String> arr) {
  if (arr.length <= 1) return;

  int mid = arr.length ~/ 2;
  List<String> left = arr.sublist(0, mid);
  List<String> right = arr.sublist(mid);

  mergeSort(left);
  mergeSort(right);

  int i = 0, j = 0, k = 0;
  while (i < left.length && j < right.length) {
    if (left[i].compareTo(right[j]) < 0) {
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
  List<String> arr = ['orange', 'banana', 'apple', 'grape', 'pear'];
  mergeSort(arr);
  print(arr); // Output: ['apple', 'banana', 'grape', 'orange', 'pear']
}
