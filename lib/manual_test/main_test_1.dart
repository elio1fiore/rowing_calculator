import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

void main() {
  final personalBest = IntervalTime(seconds: 350);
  const double meters = 3175;
  final time = IntervalTime(seconds: 600);

  final media = mediaCinquecentoBase(metri: meters, tempo: time);
  final de = dispendioEnergetico(
      metri: meters, personalBest: personalBest, time: time);
  final watt = calcWatt(mediaCinquecento: media);

  print(media.valueMinuteSecondMillisecondOne);
  print('$de %');
  print('$watt watt');
}
