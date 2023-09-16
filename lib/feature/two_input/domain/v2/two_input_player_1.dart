import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

part 'two_input_player_1.freezed.dart';
part 'two_input_player_1.g.dart';

@freezed
class TwoInputPlayer1 with _$TwoInputPlayer1 {
  const TwoInputPlayer1._();
  const factory TwoInputPlayer1({
    required double watt,
    required IntervalTime time,
    required IntervalTime media500,
    required int meters,
  }) = _TwoInputPlayer1;

  factory TwoInputPlayer1.fromJson(Map<String, dynamic> json) =>
      _$TwoInputPlayer1FromJson(json);

  factory TwoInputPlayer1.fromWT({
    required String watt,
    required String time,
  }) {
    final nWatt = double.parse(watt);
    final mediaSp = time.split(':');
    final minutes = int.parse(mediaSp[0]);
    final seconds = int.parse(mediaSp[1]);
    final decs = int.parse(mediaSp[2]);

    final IntervalTime timeIT = IntervalTime(
      minutes: minutes,
      seconds: seconds,
      microseconds: decs,
    );

    final media500 = mediaCinquecentoCpx(watt: nWatt);

    final meters = calcMeters(media: media500, time: timeIT);

    return TwoInputPlayer1(
      media500: media500,
      meters: meters,
      time: timeIT,
      watt: nWatt,
    );
  }

  factory TwoInputPlayer1.fromM500T({
    required String media,
    required String time,
  }) {
    final mediaSp = media.split(':');

    final m_minutes = int.parse(mediaSp[0]);
    final m_seconds = int.parse(mediaSp[1]);
    final m_decs = int.parse(mediaSp[2]);

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

    return TwoInputPlayer1(
      media500: mediaIT,
      meters: meters,
      time: timeIT,
      watt: watt,
    );
  }
}
