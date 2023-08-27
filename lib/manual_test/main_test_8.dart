import 'package:row_calculator/core/function/functions.dart';

import '../core/domain/interval_time.dart';

void main() {
  final IntervalTime media500 =
      IntervalTime(minutes: 1, seconds: 28, milliseconds: 9);
  const int percentuale = 70;

  final watt = calcWatt(mediaCinquecento: media500, isDouble: true);

  final wattXPerc = wattXPercentual(
      numberPerc: percentuale.toDouble(), watt: watt.toDouble());

  final mediaPerc = mediaXPercentual(wattXPercentual: wattXPerc);

  print('WATT');
  print(watt);
  print('PERCENTUALE -');
  print(percentuale);
  print('MEDIA 500 -');
  print(media500.valueMinuteSecondMillisecondOne);
  print('WATT PERCENTUALE');
  print(wattXPerc);
  print('MEDIA PERCENTUALE');
  print(mediaPerc.valueMinuteSecondMillisecondOne);
}
