import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

class TwoInputPagePlayer1 {
  final double watt;
  final IntervalTime time;
  final IntervalTime media500;
  final int meters;

  TwoInputPagePlayer1({
    required this.media500,
    required this.meters,
    required this.time,
    required this.watt,
  });

  factory TwoInputPagePlayer1.fromWT({
    required String watt,
    required String time,
  }) {
    final nWatt = double.parse(watt);
    final media_sp = time.split(':');
    final minutes = int.parse(media_sp[0]);
    final seconds = int.parse(media_sp[1]);
    final decs = int.parse(media_sp[2]);

    final IntervalTime timeIT = IntervalTime(
      minutes: minutes,
      seconds: seconds,
      microseconds: decs,
    );

    final media500 = mediaCinquecentoCpx(watt: nWatt);

    final meters = calcMeters(media: media500, time: timeIT);

    return TwoInputPagePlayer1(
      media500: media500,
      meters: meters,
      time: timeIT,
      watt: nWatt,
    );
  }

  factory TwoInputPagePlayer1.fromM500T({
    required String media,
    required String time,
  }) {
    final media_sp = media.split(':');

    final m_minutes = int.parse(media_sp[0]);
    final m_seconds = int.parse(media_sp[1]);
    final m_decs = int.parse(media_sp[2]);

    final IntervalTime mediaIT = IntervalTime(
      minutes: m_minutes,
      seconds: m_seconds,
      milliseconds: m_decs,
    );

    final time_sp = time.split(':');

    final t_minutes = int.parse(time_sp[0]);
    final t_seconds = int.parse(time_sp[1]);
    final t_decs = int.parse(time_sp[2]);

    final IntervalTime timeIT = IntervalTime(
      minutes: t_minutes,
      seconds: t_seconds,
      milliseconds: t_decs,
    );

    final watt = calcWatt(
      mediaCinquecento: mediaIT,
    );

    final meters = calcMeters(
      media: mediaIT,
      time: timeIT,
    );

    return TwoInputPagePlayer1(
      media500: mediaIT,
      meters: meters,
      time: timeIT,
      watt: watt,
    );
  }
}
