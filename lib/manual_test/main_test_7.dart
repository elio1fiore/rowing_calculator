import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/function/functions.dart';

void main() {
  final IntervalTime media500 = IntervalTime(minutes: 1, seconds: 46);

  final watt = calcWatt(mediaCinquecento: media500);
  final meters2000 = timeFromMedia(media500: media500, meters: 2000);
  final meters3000 = timeFromMedia(media500: media500, meters: 3000);

  print(watt);
  print(meters2000.valueMinuteSecondMillisecond);
  print(meters3000.valueMinuteSecondMillisecond);
}
