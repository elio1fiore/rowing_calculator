import 'package:row_calculator/calc/domain/interval_time.dart';
import 'package:row_calculator/calc/function/functions.dart';

void main() {
  const double watt = 350;
  final time = IntervalTime(minutes: 10, seconds: 30);

  final mediaCinquecento = mediaCinquecentoCpx(watt: watt);
  final meters = calcMeters(media: mediaCinquecento, time: time);

  print(mediaCinquecento.valueMinuteSecondMillisecondOne);
  print('meters: $meters');
}
