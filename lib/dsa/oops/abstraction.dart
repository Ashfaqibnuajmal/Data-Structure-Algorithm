abstract class Animal {
  void sound(); // Abstract method (no body)
}

class Dog extends Animal {
  @override
  void sound() {
    print('Woof!');
  }
}

void main() {
  Dog d = Dog();
  d.sound(); // Output: Woof!
}
