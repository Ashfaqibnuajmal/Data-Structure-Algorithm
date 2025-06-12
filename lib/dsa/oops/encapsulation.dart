class Person {
  String _name = '';

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }
}

void main() {
  var p = Person();
  p.setName('Alex');
  print(p.getName());
}
