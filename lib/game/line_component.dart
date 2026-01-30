import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'line.dart';

class LineComponent extends Component {
  final Line line;

  LineComponent(this.line);

  @override
  void render(Canvas canvas) {
    if (line.stations.length < 2) return;

    final paint = Paint()
      ..color = line.color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < line.stations.length - 1; i++) {
      canvas.drawLine(
        line.stations[i].position.toOffset(),
        line.stations[i + 1].position.toOffset(),
        paint,
      );
    }
  }
}
