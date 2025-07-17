int mergeSortInt(int number) {
  String sorted = mergeSort(number.toString());
  return int.parse(sorted);
}

String mergeSort(String s) {
  if (s.length <= 1) return s;

  int mid = s.length ~/ 2;
  String left = mergeSort(s.substring(0, mid));
  String right = mergeSort(s.substring(mid));

  return merge(left, right);
}

String merge(String left, String right) {
  String result = '';
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i].compareTo(right[j]) < 0) {
      result += left[i++];
    } else {
      result += right[j++];
    }
  }

  return result + left.substring(i) + right.substring(j);
}

void main() {
  int num = 413205;
  int sortedNum = mergeSortInt(num);
  print(sortedNum); // Output: 12345
}
