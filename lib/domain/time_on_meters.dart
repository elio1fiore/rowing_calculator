import 'package:row_calculator/domain/interval_time.dart';

class TimeOnMeters {
  final IntervalTime intervalTime;
  final int meters;
  final String unit = "m";

  TimeOnMeters({
    required this.intervalTime,
    required this.meters,
  });

  String get metersAndUnit => '${meters.toString()} $unit';

  // ignore: unnecessary_string_interpolations
  String get durationMask => '${intervalTime.valueMinuteSecondMillisecondOne}';
}
