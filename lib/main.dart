import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/city_lines_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GameWidget(game: CityLinesGame()));
}
