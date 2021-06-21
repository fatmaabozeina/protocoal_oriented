abstract class Performer {
  void perform();
}

class Dancer extends Performer {
  void perform() {
    print('Dance');
  }
}

class Singer extends Performer {
  void perform() {
    print('sing');
  }
}

// can't extend more than one class ! so extends dancer or Singer.
class Musician extends Dancer {
  void showTime() {
    perform();
  }
}

/////////////////////////////////////
// using protocol oriented pop..
mixin SingerMixin {
  void perform() {
    print('sing');
  }
}
mixin DancerMixin {
  void perform() {
    print('Dance');
  }
}

class Musician2 extends Performer with DancerMixin, SingerMixin {
  void showTime() {
    perform();
  }
}
