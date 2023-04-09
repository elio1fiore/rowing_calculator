import 'package:row_calculator/calc/domain/interval_time.dart';
import 'package:row_calculator/calc/function/functions.dart';
import 'package:row_calculator/util/double_extension.dart';

void main() {
  final personalBest = IntervalTime(seconds: 415);
  const double meters = 2500;
  final time = IntervalTime(seconds: 633);

  final media = mediaCinquecentoBase(metri: meters, tempo: time);
  final de = dispendioEnergetico(
    metri: meters,
    personalBest: personalBest,
    time: time,
  );
  final watt = calcWatt(mediaCinquecento: media);
  final timeInSecond = time.inSeconds;

  print(media.valueMinuteSecondMillisecondOne);
  print(de.valueInPercentuale);
  print(watt);
  print(timeInSecond);
}
