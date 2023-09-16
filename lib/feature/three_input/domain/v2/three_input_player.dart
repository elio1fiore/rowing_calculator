import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

part 'three_input_player.freezed.dart';
part 'three_input_player.g.dart';

@freezed
class ThreeInputPlayer with _$ThreeInputPlayer {
  const factory ThreeInputPlayer({
    required String nameBoat,
    required String boatBest,
    required IntervalTime personalBest,
    required int meters,
    required IntervalTime time,
    required IntervalTime media500,
    required double energyExp,
    required double watt,
  }) = _ThreeInputPlayer;

  factory ThreeInputPlayer.fromJson(Map<String, dynamic> json) =>
      _$ThreeInputPlayerFromJson(json);

  factory ThreeInputPlayer.fromTime({
    required String personalBest,
    required String meters,
    required String time,
    required String nameBoat,
    required String boatBest,
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

    return ThreeInputPlayer(
      energyExp: energyExp,
      media500: media,
      meters: doubleMeters.toInt(),
      personalBest: personalBestIT,
      time: timeIT,
      watt: watt,
      boatBest: boatBest,
      nameBoat: nameBoat,
    );
  }

  factory ThreeInputPlayer.fromEnergyExp({
    required String personalBest,
    required String meters,
    required String energyExp,
    required String nameBoat,
    required String boatBest,
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

    return ThreeInputPlayer(
      energyExp: doubleEnergyExp,
      media500: mediaPrevista,
      meters: doubleMeters.toInt(),
      personalBest: personalBestIT,
      time: estimatedTime,
      watt: wattPrevisti,
      boatBest: boatBest,
      nameBoat: nameBoat,
    );
  }
}
