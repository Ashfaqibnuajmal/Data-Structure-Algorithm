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

  result += left.substring(i);
  result += right.substring(j);

  return result;
}

void main() {
  String name = "ashfaq";
  String sorted = mergeSort(name);
  print(sorted); // Output: aafhqs
}
