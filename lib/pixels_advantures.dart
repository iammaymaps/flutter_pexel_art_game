import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pexel_art_game/levels/level.dart';

class PixelAdvantre extends FlameGame {
  late final CameraComponent cam;

  Color backgroundColor() => const Color(0xFF211f30);

  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);

    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, world]);
    return super.onLoad();
  }
}
