import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

void main() {
  final IntervalTime media500 =
      IntervalTime(minutes: 1, seconds: 46, milliseconds: 700);

  // print(media500.valueMinuteSecondMillisecond);

  final watt = calcWatt(mediaCinquecento: media500);
  final meters500 = timeFromMedia(media500: media500, meters: 500);
  final meters2000 = timeFromMedia(media500: media500, meters: 2000);
  final meters3000 = timeFromMedia(media500: media500, meters: 3000);

  // print(watt);
  // print(meters500.millisecond);
  // print(meters500.valueMinuteSecondMillisecond);
  // print(meters2000.valueMinuteSecondMillisecond);
  // print(meters3000.valueMinuteSecondMillisecond);
}
