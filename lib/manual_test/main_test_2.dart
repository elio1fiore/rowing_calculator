import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

void main() {
  final personalBest = IntervalTime(seconds: 355);
  const double meters = 3175;
  const double de = 70;

  final te = tempoPrevisto(
      dispendioEnergetico: de, meters: meters, personalBest: personalBest);
  final mediaCinquecento = mediaCinquecentoBase(metri: meters, tempo: te);

  print(te.valueMinuteSecondMillisecondOne);
  print(mediaCinquecento.valueMinuteSecondMillisecondOne);
}
