mixin Flyable {
  void fly() {
    print('Flying');
  }
}

mixin Swimmable {
  void swim() {
    print('Swimming');
  }
}

class Bird with Flyable {}

class Fish with Swimmable {}

void main() {
  var bird = Bird();
  bird.fly();

  var fish = Fish();
  fish.swim();
}
