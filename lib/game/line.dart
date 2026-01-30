import 'package:flutter/material.dart';
import 'station.dart';
import 'vehicle.dart';

class Line {
  final String id;
  final Color color;
  final List<Station> stations = [];

  Line({required this.id, required this.color});
}
