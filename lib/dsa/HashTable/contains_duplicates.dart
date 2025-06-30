bool hasDuplicates(List<int> nums) {
  Set<int> seen = {};

  for (var num in nums) {
    if (seen.contains(num)) return true;
    seen.add(num);
  }

  return false;
}

void main() {
  print(hasDuplicates([1, 2, 3, 4])); // false
  print(hasDuplicates([1, 2, 3, 2])); // true
  print(hasDuplicates([5, 5, 5, 5])); // true
}
