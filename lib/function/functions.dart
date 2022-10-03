import 'dart:math';

import 'package:row_calculator/domain/interval_time.dart';

IntervalTime mediaCinquecentoBase({
  required IntervalTime tempo,
  required double metri,
}) {
  final tempoBeta = tempo.betaValue;

  final betaMedia = tempoBeta / metri * 500;

  return IntervalTime.fromBeta(betaMedia);
}

IntervalTime mediaCinquecentoCpx({
  required double watt,
}) {
  final a = 2.8 / watt;
  final pow_a = pow(a, 1 / 3).toDouble();
  final mediaBeta = (pow_a * 500) / Duration.secondsPerDay;

  return IntervalTime.fromBeta(mediaBeta);
}

double dispendioEnergetico({
  required double metri,
  required IntervalTime personalBest,
  required IntervalTime time,
}) {
  final metriFratto2000 = metri / 2000;
  final personalBestFrattoTempo = personalBest.betaValue / time.betaValue;

  final variable = metriFratto2000 * personalBestFrattoTempo;

  final elevation = pow(variable, 2.95).toDouble();

  return dp(elevation * 100, 2);
}

double calcWatt({
  required IntervalTime mediaCinquecento,
  bool isDouble = false,
}) {
  const double constVar = 2.8;
  final double a = (mediaCinquecento.betaValue * Duration.secondsPerDay) / 500;

  final den = pow(a, 3).toDouble();

  return constVar / den;
}

IntervalTime tempoPrevisto({
  required IntervalTime personalBest,
  required double dispendioEnergetico,
  required double meters,
}) {
  final a = 0.25 * personalBest.betaValue;

  final pow_a = pow(a, 2.95).toDouble();

  final b = pow_a / (dispendioEnergetico / 100);
  const c = 1 / 2.95;

  final pow_b = pow(b, c).toDouble();
  final d = meters / 500;

  final beta = pow_b * d;

  return IntervalTime.fromBeta(beta);
}

int calcMeters({required IntervalTime media, required IntervalTime time}) {
  final den = Duration.secondsPerDay * media.betaValue;
  final frac = 500 / den;

  final result_round = (frac * time.inSeconds).round();

  return result_round;
}

IntervalTime timeFromMedia(
    {required IntervalTime media500, required int meters}) {
  final alpha = meters / 500;

  final beta = media500.betaValue * alpha;

  final ret = IntervalTime.fromBeta(beta);

  return ret;
}

double wattXPercentual({required double watt, required double numberPerc}) {
  final den = numberPerc / 100;

  return watt * den;
}

IntervalTime mediaXPercentual({required double wattXPercentual}) {
  final a = 2.8 / wattXPercentual;

  final pow_a = pow(a, 1 / 3).toDouble();

  final beta = (pow_a * 500) / Duration.secondsPerDay;

  return IntervalTime.fromBeta(beta);
}

double dp(double val, int places) {
  num mod = pow(10.0, places);
  return ((val * mod).round().toDouble() / mod);
}
