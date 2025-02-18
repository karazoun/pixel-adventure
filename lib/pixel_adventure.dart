import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/levels/level.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF211F30);
  late final CameraComponent cameraComponent;

  @override
  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cameraComponent = CameraComponent.withFixedResolution(
      width: 640,
      height: 368,
      world: world,
    );

    cameraComponent.viewfinder.anchor = Anchor.topLeft;

    addAll(
      [world, cameraComponent],
    );
    return super.onLoad();
  }
}
