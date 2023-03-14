import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/domain/time_on_meters.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:row_calculator/util/function_util.dart';

class OneInputPagePlayer {
  final double watt;
  final IntervalTime media500;
  final List<TimeOnMeters> listTimeOnMeters;

  OneInputPagePlayer({
    required this.watt,
    required this.listTimeOnMeters,
    required this.media500,
  });

  factory OneInputPagePlayer.fromWatt(String watt) {
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
    print(listTimeOnMeters.length);

    return OneInputPagePlayer(
        watt: nWatt, listTimeOnMeters: listTimeOnMeters, media500: media);
  }

  factory OneInputPagePlayer.fromMedia500(String media) {
    final media_sp = media.split(':');

    final minutes = int.parse(media_sp[0]);
    final seconds = int.parse(media_sp[1]);
    final decs = int.parse(media_sp[2]) * 100;

    final IntervalTime mediaIntervalTime =
        IntervalTime(minutes: minutes, seconds: seconds, millisecond: decs);

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

    return OneInputPagePlayer(
      listTimeOnMeters: listTimeOnMeters,
      media500: mediaIntervalTime,
      watt: watt,
    );
  }
}
