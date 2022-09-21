import 'package:flutter/material.dart';
import 'package:row_calculator/util/type_name_function.dart';

class Functionality {
  final TypeNameFunction name;
  final double Function(double arg, [double arg1, double arg2]) function;
  final Color color;
  final String navigatorPath;

  Functionality({
    required this.name,
    required this.function,
    required this.color,
    required this.navigatorPath,
  });
}
