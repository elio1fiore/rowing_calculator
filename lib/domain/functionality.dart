import 'package:flutter/material.dart';

class Functionality {
  final String name;
  final double Function(double a, double b) function;
  final Color color;
  final String navigatorPath;

  Functionality({
    required this.name,
    required this.function,
    required this.color,
    required this.navigatorPath,
  });
}
