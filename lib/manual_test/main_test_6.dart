import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/function/functions.dart';

void main() {
  final IntervalTime media500 =
      IntervalTime(minutes: 1, seconds: 46, millisecond: 600);

  final IntervalTime time = IntervalTime(minutes: 10, seconds: 33);

  final watt = calcWatt(mediaCinquecento: media500);
  final meters = calcMeters(media: media500, time: time);

  print(watt);
  print(meters);
}
