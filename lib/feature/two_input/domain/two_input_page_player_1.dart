// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:row_calculator/core/domain/interval_time.dart';
// import 'package:row_calculator/core/function/functions.dart';

// class TwoInputPagePlayer1 {
//   final double watt;
//   final IntervalTime time;
//   final IntervalTime media500;
//   final int meters;

//   TwoInputPagePlayer1({
//     required this.watt,
//     required this.time,
//     required this.media500,
//     required this.meters,
//   });

//   factory TwoInputPagePlayer1.fromWT({
//     required String watt,
//     required String time,
//   }) {
//     final nWatt = double.parse(watt);
//     final mediaSp = time.split(':');
//     final minutes = int.parse(mediaSp[0]);
//     final seconds = int.parse(mediaSp[1]);
//     final decs = int.parse(mediaSp[2]);

//     final IntervalTime timeIT = IntervalTime(
//       minutes: minutes,
//       seconds: seconds,
//       microseconds: decs,
//     );

//     final media500 = mediaCinquecentoCpx(watt: nWatt);

//     final meters = calcMeters(media: media500, time: timeIT);

//     return TwoInputPagePlayer1(
//       media500: media500,
//       meters: meters,
//       time: timeIT,
//       watt: nWatt,
//     );
//   }

//   factory TwoInputPagePlayer1.fromM500T({
//     required String media,
//     required String time,
//   }) {
//     final mediaSp = media.split(':');

//     final m_minutes = int.parse(mediaSp[0]);
//     final m_seconds = int.parse(mediaSp[1]);
//     final m_decs = int.parse(mediaSp[2]);

//     final IntervalTime mediaIT = IntervalTime(
//       minutes: m_minutes,
//       seconds: m_seconds,
//       milliseconds: m_decs,
//     );

//     final time_sp = time.split(':');

//     final t_minutes = int.parse(time_sp[0]);
//     final t_seconds = int.parse(time_sp[1]);
//     final t_decs = int.parse(time_sp[2]);

//     final IntervalTime timeIT = IntervalTime(
//       minutes: t_minutes,
//       seconds: t_seconds,
//       milliseconds: t_decs,
//     );

//     final watt = calcWatt(
//       mediaCinquecento: mediaIT,
//     );

//     final meters = calcMeters(
//       media: mediaIT,
//       time: timeIT,
//     );

//     return TwoInputPagePlayer1(
//       media500: mediaIT,
//       meters: meters,
//       time: timeIT,
//       watt: watt,
//     );
//   }

//   TwoInputPagePlayer1 copyWith({
//     double? watt,
//     IntervalTime? time,
//     IntervalTime? media500,
//     int? meters,
//   }) {
//     return TwoInputPagePlayer1(
//       watt: watt ?? this.watt,
//       time: time ?? this.time,
//       media500: media500 ?? this.media500,
//       meters: meters ?? this.meters,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'watt': watt,
//       'time': time.toMap(),
//       'media500': media500.toMap(),
//       'meters': meters,
//     };
//   }

//   factory TwoInputPagePlayer1.fromMap(Map<String, dynamic> map) {
//     return TwoInputPagePlayer1(
//       watt: map['watt'] as double,
//       time: IntervalTime.fromMap(map['time'] as Map<String, dynamic>),
//       media500: IntervalTime.fromMap(map['media500'] as Map<String, dynamic>),
//       meters: map['meters'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory TwoInputPagePlayer1.fromJson(String source) =>
//       TwoInputPagePlayer1.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'TwoInputPagePlayer1(watt: $watt, time: $time, media500: $media500, meters: $meters)';
//   }

//   @override
//   bool operator ==(covariant TwoInputPagePlayer1 other) {
//     if (identical(this, other)) return true;

//     return other.watt == watt &&
//         other.time == time &&
//         other.media500 == media500 &&
//         other.meters == meters;
//   }

//   @override
//   int get hashCode {
//     return watt.hashCode ^ time.hashCode ^ media500.hashCode ^ meters.hashCode;
//   }
// }
