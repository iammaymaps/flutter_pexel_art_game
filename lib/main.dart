import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pexel_art_game/pixels_advantures.dart';

void main() {
  PixelAdvantre game = PixelAdvantre();
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.setLandscape();
  Flame.device.fullScreen();
  runApp(GameWidget(game: kDebugMode ? PixelAdvantre() : game));
}
