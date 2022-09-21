import 'package:flutter/material.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:row_calculator/manual_test/main_prova.dart';

void main() {
  const secondTot = 15385;

  print('----ORA----');
  const hr = secondTot / 3600;
  print('ora :$hr');
  final hr_dp = dp(hr, 5);
  print('ora dp:$hr_dp');
  final hr_tr = hr.truncate();
  print('ora tr:$hr_tr');

  print('----GIORNO----');
  final day = hr_dp ~/ 24;
  print('dai $day');

  print('----MINUTI----');
  final min = (hr - hr_tr) * 60;
  print('min $min');
  final min_tr = min.truncate();
  print('min_tr $min_tr');

  print('----SECONDI----');
  final sec = (min - min_tr) * 60;
  print('sec $sec');
  final sec_tr = sec.truncate();
  print('sec_tr $sec_tr');

  print('----MILLI SECONDI----');
  final millisec = (sec - sec_tr) * 1000;
  print('millisec $millisec');
  final millisec_tr = millisec.truncate();
  print('millisec_tr $millisec_tr');
}
