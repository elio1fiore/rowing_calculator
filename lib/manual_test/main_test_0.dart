import 'package:row_calculator/core/domain/interval_time.dart';

import '../core/function/functions.dart';

void main(List<String> args) {
  const double watt = 298;

  final mediaW = mediaCinquecentoCpx(watt: watt);

  final a = timeFromMedia(media500: mediaW, meters: 500);

  print('a ${a.valueMinuteSecondMillisecondOne}');

  final min = mediaW.minutes;
  final sec = mediaW.seconds;
  final dec = mediaW.milliseconds;

  final media = IntervalTime(minutes: min, seconds: sec, milliseconds: dec);

  final b = timeFromMedia(media500: media, meters: 500);
  print('b ${b.valueMinuteSecondMillisecondOne}');
}
