import 'dart:async';
import 'dart:ui';

import 'package:dasar_flame1/component/asteroid.dart';
import 'package:dasar_flame1/component/asteroid_spawner.dart';
import 'package:dasar_flame1/component/bgParallaxComponent.dart';
import 'package:dasar_flame1/component/ship.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class MyFlameGame extends FlameGame with PanDetector{
  late Ship s;
  late Bgparallaxcomponent bgParallax;
  late AsteroidSpawner asp;

  @override
  Color backgroundColor() {
    return const Color(0xFF000045);
  } 
  
  @override
  FutureOr<void> onLoad() async {
    bgParallax = Bgparallaxcomponent();
    add(bgParallax);

    s = Ship();
    add(s); 

    asp = AsteroidSpawner();
    add(asp);
  }

  @override
  void update(double dt) {
    bgParallax.changeSpeedBasedShip(s);
    super.update(dt);
  }  

  @override
  void onPanUpdate(DragUpdateInfo info) {
    s.setTujuan(info);
    s.position = info.eventPosition.global;
  }
}