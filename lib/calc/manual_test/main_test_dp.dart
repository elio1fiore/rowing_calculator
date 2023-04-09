import 'package:flutter/material.dart';
import 'package:row_calculator/calc/domain/interval_time.dart';
import 'package:row_calculator/calc/function/functions.dart';

void main() {
  final double p = 123.4;

  final it = IntervalTime(minutes: 3, seconds: 45, microsecond: 700);

  print(it.minutes);
  print(it.seconds);
  print(it.microsecond);

  final p_dp = dp(p, 0);
  final inte = p.toInt();
  final p_100 = p / 100;

  // print(p_dp);
}
