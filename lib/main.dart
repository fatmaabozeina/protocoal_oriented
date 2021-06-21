import 'package:flutter/material.dart';
import 'animalexample.dart';
import 'antherexample.dart';

void main() {
  Radio().playVideo();
  Radio().playAudio();
  RadioPop().playAudio();
  CatPop().makesSound();
  CatPop().meowing();
  Musician2().perform();

  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}

// oop project
class MediaPlayer {
  void increaseVolume() {
    print('higher volume');
  }

  void decreaseVolume() {
    print('lover volume');
  }

  void playAudio() {
    print('audio');
  }

  void playVideo() {
    print('video');
  }
}

class Television extends MediaPlayer {}

class Radio extends MediaPlayer {
  // radio inherits play video either ..
  // doesn't apply interface segregation ..
}

/////////////////////////////////////////
// using pop project
class MediaPlayerPop {
  void increaseVolume() {
    print('higher volume');
  }

  void decreaseVolume() {
    print('lover volume');
  }
}

class RadioPop extends MediaPlayerPop with Audio {}

mixin Audio {
  void playAudio() {
    print('play audio');
  }
}
mixin Video {
  void playVideo() {
    print('play audio');
  }
}
