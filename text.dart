class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
  Person.named({required this.age, required this.name});
  Person.optional({this.age = 2, this.name = "ashfaq"});
  Person.constPerson(this.name, this.age);
  factory Person.fromMap(Map<String, dynamic> data) {
    return Person(data['name'], data['age']);
  }
}

void main() {
  Person p1 = Person("Ashfaq", 20);
  Person p2 = Person.named(age: 12, name: "ashfaq");
  Person p3 = Person.constPerson("ashfaq", 29);
  Person p4 = Person.fromMap({'name': 'ashfaq', 'age': 23});
  Person p5 = Person.optional();
}
