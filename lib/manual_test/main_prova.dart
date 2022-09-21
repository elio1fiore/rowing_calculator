import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  const secondIntoDay = Duration.secondsPerDay;
  const watt = 341;
  final double secondTot = (pow((2.8 / watt), (1 / 3)) * 500);

  final minutePlusSecond = secondTot / 60;

  final minuteDouble = minutePlusSecond - minutePlusSecond.truncate();

  final minuteDoubleRounded = dp(minuteDouble, 3);

  final second = minuteDoubleRounded * 60;

  final decimoDiSecondo = second - second.truncate();

  final decimoDiSecondoRounded = dp(decimoDiSecondo * 100, 2).toInt();

  print('minute ${minutePlusSecond.truncate()}');
  print('second ${second.truncate()}');
  print('decimo di secondo $decimoDiSecondoRounded');
}
