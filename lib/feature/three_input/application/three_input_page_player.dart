import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

class ThreeInputPagePlayer {
  final IntervalTime personalBest;
  final int meters;
  final IntervalTime time;
  final IntervalTime media500;
  final double energyExp;
  final double watt;

  ThreeInputPagePlayer({
    required this.energyExp,
    required this.media500,
    required this.meters,
    required this.personalBest,
    required this.time,
    required this.watt,
  });

  factory ThreeInputPagePlayer.fromTime({
    required String personalBest,
    required String meters,
    required String time,
  }) {
    final pbSplit = personalBest.split(':');
    final minPb = int.parse(pbSplit[0]);
    final secPb = int.parse(pbSplit[1]);
    // final decPb = int.parse(pbSplit[2]);

    final tSplit = time.split(':');
    final minT = int.parse(tSplit[0]);
    final secT = int.parse(tSplit[1]);
    final decT = int.parse(tSplit[2]);

    final doubleMeters = double.parse(meters);

    // final personalBestIT =
    //     IntervalTime(minutes: minPb, seconds: secPb, microsecond: decPb);
    final personalBestIT = IntervalTime(
      minutes: minPb,
      seconds: secPb,
    );

    final timeIT =
        IntervalTime(minutes: minT, seconds: secT, milliseconds: decT);

    final media = mediaCinquecentoBase(metri: doubleMeters, tempo: timeIT);
    final energyExp = dispendioEnergetico(
        metri: doubleMeters, personalBest: personalBestIT, time: timeIT);
    final watt = calcWatt(mediaCinquecento: media);

    return ThreeInputPagePlayer(
      energyExp: energyExp,
      media500: media,
      meters: doubleMeters.toInt(),
      personalBest: personalBestIT,
      time: timeIT,
      watt: watt,
    );
  }

  factory ThreeInputPagePlayer.fromEnergyExp({
    required String personalBest,
    required String meters,
    required String energyExp,
  }) {
    final pbSplit = personalBest.split(':');
    final minPb = int.parse(pbSplit[0]);
    final secPb = int.parse(pbSplit[1]);

    final personalBestIT = IntervalTime(
      minutes: minPb,
      seconds: secPb,
    );
    final doubleMeters = double.parse(meters);
    final doubleEnergyExp = double.parse(energyExp);

    final estimatedTime = tempoPrevisto(
      dispendioEnergetico: doubleEnergyExp,
      meters: doubleMeters,
      personalBest: personalBestIT,
    );

    final mediaPrevista =
        mediaCinquecentoBase(metri: doubleMeters, tempo: estimatedTime);

    final wattPrevisti = calcWatt(mediaCinquecento: mediaPrevista);

    return ThreeInputPagePlayer(
      energyExp: doubleEnergyExp,
      media500: mediaPrevista,
      meters: doubleMeters.toInt(),
      personalBest: personalBestIT,
      time: estimatedTime,
      watt: wattPrevisti,
    );
  }
}
