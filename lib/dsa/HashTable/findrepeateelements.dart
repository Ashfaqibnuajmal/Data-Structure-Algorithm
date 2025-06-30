List<int> findDuplicates(List<int> nums) {
  Map<int, int> count = {};
  List<int> result = [];

  for (var num in nums) {
    count[num] = (count[num] ?? 0) + 1;
  }

  for (var entry in count.entries) {
    if (entry.value > 1) {
      result.add(entry.key);
    }
  }

  return result;
}

void main() {
  print(findDuplicates([1, 2, 3, 2, 4, 5, 3])); // [2, 3]
  print(findDuplicates([10, 10, 10])); // [10]
  print(findDuplicates([7, 8, 9])); // []
}
