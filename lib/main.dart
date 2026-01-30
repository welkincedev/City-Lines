import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game/city_lines_game.dart';

void main() {
  runApp(
    GameWidget(
      game: CityLinesGame(),
      backgroundBuilder: (_) => Container(color: Colors.black),
    ),
  );
}
