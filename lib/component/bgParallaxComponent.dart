import 'dart:async';

import 'package:dasar_flame1/component/ship.dart';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/painting.dart';

class Bgparallaxcomponent extends ParallaxComponent with HasGameRef {
  final _parallelImage = [
    ParallaxImageData("parallax/bkgd_0.png"),
    ParallaxImageData("Parallax/bkgd_1.png"),
    ParallaxImageData("Parallax/bkgd_2.png"),
    ParallaxImageData("Parallax/bkgd_3.png"),
    ParallaxImageData("Parallax/bkgd_4.png"),
    ParallaxImageData("Parallax/bkgd_5.png"),
    ParallaxImageData("Parallax/bkgd_6.png"),
  ];

   @override
  FutureOr<void> onLoad() async {
    parallax = await game.loadParallax(_parallelImage,
      baseVelocity: Vector2(10, 0),
      velocityMultiplierDelta: Vector2(1.5, 1.5),
      repeat: ImageRepeat.repeat
    );
  }
  void changeSpeedBasedShip(Ship player){
    if(parallax != null){
      parallax!.baseVelocity = player.arah * 10;
    }
  }
}
