import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class CityLinesGame extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF111111);

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Temporary debug text to confirm rendering
    add(
      TextComponent(
        text: 'City Lines',
        position: canvasSize / 2,
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: const TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Game loop is alive
  }
}
