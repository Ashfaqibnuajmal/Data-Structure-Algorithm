class Student {
  final String first_name;
  final String second_name;
  final int age;
  final int roll_no;

  Student(
    this.first_name,
    this.second_name,
    this.age,
    this.roll_no,
  );

  String fullName() {
    return first_name + second_name;
  }
}

void main() {
  Student student1 = Student("farshad", "roshan", 10, 30);

  Student student2 = Student("anu", "M", 12, 32);

  Student student3 = Student("rahul", "a", 30, 10);

  Student student4 = Student("sadique", "ck", 10, 1);

  List<Student> studnets = [];

  studnets.add(student1);
  studnets.add(student2);
  studnets.add(student3);
  studnets.add(student4);

  for (int i = 0; i < studnets.length; i++) {
    final value = studnets[i];

    print(value.fullName());
  }
}
