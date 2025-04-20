void findDuplicates(List<int> nums) {
  Map<int, int> hashTable = {};
  print("Duplicate elements:");

  for (int num in nums) {
    if (hashTable.containsKey(num)) {
      print(num);
    } else {
      hashTable[num] = 1;
    }
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 2, 5, 6, 3, 7, 8, 1];
  findDuplicates(numbers);
}
