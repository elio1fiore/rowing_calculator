// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/domain/interval_time.dart';

// class TimeOnMeters {
//   final IntervalTime intervalTime;
//   final int meters;
//   final String unit = "m";

//   TimeOnMeters({
//     required this.intervalTime,
//     required this.meters,
//   });

//   String get metersAndUnit => '${meters.toString()} $unit';

//   // ignore: unnecessary_string_interpolations
//   String get durationMask => '${intervalTime.valueMinuteSecondMillisecondOne}';

//   TimeOnMeters copyWith({
//     IntervalTime? intervalTime,
//     int? meters,
//   }) {
//     return TimeOnMeters(
//       intervalTime: intervalTime ?? this.intervalTime,
//       meters: meters ?? this.meters,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'intervalTime': intervalTime.toMap(),
//       'meters': meters,
//     };
//   }

//   factory TimeOnMeters.fromMap(Map<String, dynamic> map) {
//     return TimeOnMeters(
//       intervalTime:
//           IntervalTime.fromMap(map['intervalTime'] as Map<String, dynamic>),
//       meters: map['meters'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory TimeOnMeters.fromJson(String source) =>
//       TimeOnMeters.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'TimeOnMeters(intervalTime: $intervalTime, meters: $meters)';

//   @override
//   bool operator ==(covariant TimeOnMeters other) {
//     if (identical(this, other)) return true;

//     return other.intervalTime == intervalTime && other.meters == meters;
//   }

//   @override
//   int get hashCode => intervalTime.hashCode ^ meters.hashCode;
// }

part 'time_on_meters.freezed.dart';
part 'time_on_meters.g.dart';

@freezed
class TimeOnMeters with _$TimeOnMeters {
  const TimeOnMeters._();
  const factory TimeOnMeters({
    required IntervalTime intervalTime,
    required int meters,
  }) = _TimeOnMeters;

  String get unit => "m";
  String get metersAndUnit => '${meters.toString()} $unit';
  String get durationMask => intervalTime.valueMinuteSecondMillisecondOne;

  factory TimeOnMeters.fromJson(Map<String, dynamic> json) =>
      _$TimeOnMetersFromJson(json);
}
