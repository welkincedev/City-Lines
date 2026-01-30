import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Station extends PositionComponent {
  final String id;
  bool selected = false;

  Station({required this.id, required Vector2 position})
    : super(position: position, size: Vector2.all(40), anchor: Anchor.center);

  @override
  void render(Canvas canvas) {
    final paint = Paint()..color = selected ? Colors.orange : Colors.blue;

    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, paint);
  }
}
