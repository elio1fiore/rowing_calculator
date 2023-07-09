import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

void main() {
  const double watt = 298;

  // final media = mediaCinquecentoCpx(watt: watt);

  final media = IntervalTime(minutes: 1, seconds: 45, millisecond: 507);

  // print(media.valueMinuteSecondMillisecond);

  final timeForMedia_250 = timeFromMedia(media500: media, meters: 250);
  final timeForMedia_750 = timeFromMedia(media500: media, meters: 750);
  final timeForMedia_1000 = timeFromMedia(media500: media, meters: 1000);
  final timeForMedia_1250 = timeFromMedia(media500: media, meters: 1250);
  final timeForMedia_1500 = timeFromMedia(media500: media, meters: 1500);
  final timeForMedia_1750 = timeFromMedia(media500: media, meters: 1750);
  final timeForMedia_2000 = timeFromMedia(media500: media, meters: 2000);
  final timeForMedia_2250 = timeFromMedia(media500: media, meters: 2250);
  final timeForMedia_2500 = timeFromMedia(media500: media, meters: 2500);
  final timeForMedia_2750 = timeFromMedia(media500: media, meters: 2750);
  final timeForMedia_3000 = timeFromMedia(media500: media, meters: 3000);

  print('media 500 m: ${media.valueMinuteSecondMillisecondOne}');
  print('250 m: ${timeForMedia_250.valueMinuteSecondMillisecondOne}');
  print('750 m: ${timeForMedia_750.valueMinuteSecondMillisecondOne}');
  print('1000 m: ${timeForMedia_1000.valueMinuteSecondMillisecondOne}');
  print('1250 m: ${timeForMedia_1250.valueMinuteSecondMillisecondOne}');
  print('1500 m: ${timeForMedia_1500.valueMinuteSecondMillisecondOne}');
  print('1750 m: ${timeForMedia_1750.valueMinuteSecondMillisecondOne}');
  print('2000 m: ${timeForMedia_2000.valueMinuteSecondMillisecondOne}');
  print('2250 m: ${timeForMedia_2250.valueMinuteSecondMillisecondOne}');
  print('2500 m: ${timeForMedia_2500.valueMinuteSecondMillisecondOne}');
  print('2750 m: ${timeForMedia_2750.valueMinuteSecondMillisecondOne}');
  print('3000 m: ${timeForMedia_3000.valueMinuteSecondMillisecondOne}');
}
