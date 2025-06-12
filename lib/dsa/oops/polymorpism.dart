class Animal {
  void sound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Bark');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Meow');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();
  
  myDog.sound();
  myCat.sound();
}
