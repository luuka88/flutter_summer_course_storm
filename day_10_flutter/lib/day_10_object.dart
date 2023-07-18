//class blue print
//class with named constructor
class Sprite {
  // constructor
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void makeSound() {
    print("Hello I'm a sprite");
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void printMyLocation() {
    print("My location is ${this.x} and ${this.y}");
  }
}

void main() {
  final Sprite cat = Sprite(4, 5);
  print(cat);
  //make sound gedeg funktsiig cat object-oos duudaarai
  cat.makeSound();
  final NamedSprite dog = NamedSprite(x: 5, y: 6);
  print(dog);
  dog.printMyLocation();
  final Animal doggy = Animal(name: 'Dog', type: 'Animal');
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = '';
  String type = '';
  void makeNoise() {
    print("Animal Roaring");
  }
}

class Rahm {
  Rahm({required String name}) {
    this.name = name;
  }
  String name = 'Rath';
}

class Wheel {
  Wheel({required String name, required int numberOfWheels}) {
    this.name = name;
    this.numberOfWheels = numberOfWheels;
  }
  String name = 'wheel';
  int numberOfWheels = 1;
}

class Bicycle {
  //named constructor with Objects
  Bicycle({required String name, required Rahm ram, required Wheel wheels}) {
    this.name = name;
    this.ram = ram;
    this.wheels = wheels;
  }
  String name = 'bicycle';
  Rahm ram = Rahm(name: 'Canon dale');
  Wheel wheels = Wheel(name: 'Montana', numberOfWheels: 4);
}
