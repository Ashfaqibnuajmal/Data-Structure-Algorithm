void main() {
  // Creating a HashMap
  Map<String, int> map = {'a': 10, 'b': 20, 'c': 30};

  // Adding a new key-value pair
  map['d'] = 40;

  // Accessing a value by key
  print(map['a']); // Output: 10

  // Removing a key-value pair
  map.remove('b');

  // Iterating through the map
  map.forEach((key, value) => print('$key: $value'));
}
