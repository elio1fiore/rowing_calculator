import 'dart:ui';

class Boat {
  final String name;
  final String boatBest;
  final Color color;

  Boat({required this.name, required this.boatBest, required this.color});

  String getHash() => name + boatBest;
}
