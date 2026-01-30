import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

import 'station.dart';

class CityLinesGame extends FlameGame with TapCallbacks {
  final List<Station> stations = [];

  @override
  Future<void> onLoad() async {
    stations.addAll([
      Station(id: 'A', position: Vector2(100, 200)),
      Station(id: 'B', position: Vector2(250, 350)),
      Station(id: 'C', position: Vector2(400, 200)),
    ]);

    addAll(stations);
  }

  @override
  void onTapDown(TapDownEvent event) {
    final worldPos = event.canvasPosition;

    for (final station in stations) {
      if (station.containsPoint(worldPos)) {
        station.selected = !station.selected;
        return;
      }
    }
  }
}
