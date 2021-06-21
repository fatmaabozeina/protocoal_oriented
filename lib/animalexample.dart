//oop
class Animal {
  void makesSound() {
    print('sound');
  }
}

class Dog extends Animal {
  @override
  void makesSound() {
    super.makesSound();
    print('parking');
  }
}

class Cat extends Animal {
  @override
  void makesSound() {
    super.makesSound();
    print('meowing');
  }
}

///////////////////////////
// protocol oriented pop

class DogPop extends Animal with toPark {}

class CatPop extends Animal with toMeow {}

mixin toPark {
  void park() {
    print('parking');
  }
}
mixin toMeow {
  void meowing() {
    print('meowing');
  }
}
