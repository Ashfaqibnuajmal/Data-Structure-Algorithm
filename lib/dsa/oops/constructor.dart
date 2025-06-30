class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  Person.named({required this.name, required this.age});

  Person.optional({this.name = 'Unknown', this.age = 0});

  const Person.constPerson(this.name, this.age);

  factory Person.fromMap(Map<String, dynamic> data) {
    return Person(data['name'], data['age']);
  }

  Person.baby(String name) : this(name, 1);
}

void main() {
  var p1 = Person('Alice', 30);
  var p2 = Person.named(name: 'Bob', age: 25);
  var p3 = Person.optional();
  const p4 = Person.constPerson('Charlie', 40);
  var p5 = Person.fromMap({'name': 'David', 'age': 35});
  var p6 = Person.baby('Emma');

  print('${p1.name} - ${p1.age}');
  print('${p2.name} - ${p2.age}');
  print('${p3.name} - ${p3.age}');
  print('${p4.name} - ${p4.age}');
  print('${p5.name} - ${p5.age}');
  print('${p6.name} - ${p6.age}');
}
