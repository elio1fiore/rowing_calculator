import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/domain/time_on_meters.dart';
import 'package:row_calculator/core/function/functions.dart';

part 'one_input_player.freezed.dart';
part 'one_input_player.g.dart';

@freezed
class OneInputPlayer with _$OneInputPlayer {
  const OneInputPlayer._();
  const factory OneInputPlayer({
    required double watt,
    required IntervalTime media500,
    required List<TimeOnMeters> listTimeOnMeters,
  }) = _OneInputPlayer;

  factory OneInputPlayer.fromJson(Map<String, dynamic> json) =>
      _$OneInputPlayerFromJson(json);

  factory OneInputPlayer.fromWatt(String watt) {
    final nWatt = double.parse(watt);
    final media = mediaCinquecentoCpx(watt: nWatt);

    List<TimeOnMeters> listTimeOnMeters = [];
    //24
    for (var i = 1; i <= 24; i++) {
      final meterCalc = 250 * i;

      final intervalTime = timeFromMedia(media500: media, meters: meterCalc);

      final timeOnMeters =
          TimeOnMeters(intervalTime: intervalTime, meters: meterCalc);

      listTimeOnMeters.add(timeOnMeters);
    }

    return OneInputPlayer(
        watt: nWatt, listTimeOnMeters: listTimeOnMeters, media500: media);
  }

  factory OneInputPlayer.fromMedia500(String media) {
    final mediaSp = media.split(':');

    final minutes = int.parse(mediaSp[0]);
    final seconds = int.parse(mediaSp[1]);
    final decs = int.parse(mediaSp[2]) * 100;

    final IntervalTime mediaIntervalTime =
        IntervalTime(minutes: minutes, seconds: seconds, milliseconds: decs);

    final watt =
        calcWatt(mediaCinquecento: mediaIntervalTime).truncateToDouble();

    List<TimeOnMeters> listTimeOnMeters = [];

    for (var i = 1; i <= 24; i++) {
      final meterCalc = 250 * i;

      final intervalTime =
          timeFromMedia(media500: mediaIntervalTime, meters: meterCalc);

      final timeOnMeters =
          TimeOnMeters(intervalTime: intervalTime, meters: meterCalc);

      listTimeOnMeters.add(timeOnMeters);
    }

    return OneInputPlayer(
      listTimeOnMeters: listTimeOnMeters,
      media500: mediaIntervalTime,
      watt: watt,
    );
  }
}
