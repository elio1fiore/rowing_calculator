import 'package:row_calculator/function/functions.dart';

import '../domain/interval_time.dart';

void main() {
  final IntervalTime media500 = IntervalTime(minutes: 1, seconds: 46);
  final int percentuale = 70;

  final watt = calcWatt(mediaCinquecento: media500, isDouble: true);
  final wattXPerc = wattXPercentual(numberPerc: 90, watt: watt.toDouble());
  final mediaPerc = mediaXPercentual(wattXPercentual: wattXPerc);

  print(watt);
  print(wattXPerc);
  print(mediaPerc.valueMinuteSecondMillisecond);
}
