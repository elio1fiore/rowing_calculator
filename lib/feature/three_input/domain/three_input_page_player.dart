// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:row_calculator/core/domain/interval_time.dart';
// import 'package:row_calculator/core/function/functions.dart';

// class ThreeInputPagePlayer {
//   final String nameBoat;
//   final String boatBest;
//   final IntervalTime personalBest;
//   final int meters;
//   final IntervalTime time;
//   final IntervalTime media500;
//   final double energyExp;
//   final double watt;

//   ThreeInputPagePlayer({
//     required this.nameBoat,
//     required this.boatBest,
//     required this.personalBest,
//     required this.meters,
//     required this.time,
//     required this.media500,
//     required this.energyExp,
//     required this.watt,
//   });

//   factory ThreeInputPagePlayer.fromTime({
//     required String personalBest,
//     required String meters,
//     required String time,
//     required String nameBoat,
//     required String boatBest,
//   }) {
//     final pbSplit = personalBest.split(':');
//     final minPb = int.parse(pbSplit[0]);
//     final secPb = int.parse(pbSplit[1]);
//     // final decPb = int.parse(pbSplit[2]);

//     final tSplit = time.split(':');
//     final minT = int.parse(tSplit[0]);
//     final secT = int.parse(tSplit[1]);
//     final decT = int.parse(tSplit[2]);

//     final doubleMeters = double.parse(meters);

//     // final personalBestIT =
//     //     IntervalTime(minutes: minPb, seconds: secPb, microsecond: decPb);
//     final personalBestIT = IntervalTime(
//       minutes: minPb,
//       seconds: secPb,
//     );

//     final timeIT =
//         IntervalTime(minutes: minT, seconds: secT, milliseconds: decT);

//     final media = mediaCinquecentoBase(metri: doubleMeters, tempo: timeIT);
//     final energyExp = dispendioEnergetico(
//         metri: doubleMeters, personalBest: personalBestIT, time: timeIT);
//     final watt = calcWatt(mediaCinquecento: media);

//     return ThreeInputPagePlayer(
//       energyExp: energyExp,
//       media500: media,
//       meters: doubleMeters.toInt(),
//       personalBest: personalBestIT,
//       time: timeIT,
//       watt: watt,
//       boatBest: boatBest,
//       nameBoat: nameBoat,
//     );
//   }

//   factory ThreeInputPagePlayer.fromEnergyExp({
//     required String personalBest,
//     required String meters,
//     required String energyExp,
//     required String nameBoat,
//     required String boatBest,
//   }) {
//     final pbSplit = personalBest.split(':');
//     final minPb = int.parse(pbSplit[0]);
//     final secPb = int.parse(pbSplit[1]);

//     final personalBestIT = IntervalTime(
//       minutes: minPb,
//       seconds: secPb,
//     );
//     final doubleMeters = double.parse(meters);
//     final doubleEnergyExp = double.parse(energyExp);

//     final estimatedTime = tempoPrevisto(
//       dispendioEnergetico: doubleEnergyExp,
//       meters: doubleMeters,
//       personalBest: personalBestIT,
//     );

//     final mediaPrevista =
//         mediaCinquecentoBase(metri: doubleMeters, tempo: estimatedTime);

//     final wattPrevisti = calcWatt(mediaCinquecento: mediaPrevista);

//     return ThreeInputPagePlayer(
//       energyExp: doubleEnergyExp,
//       media500: mediaPrevista,
//       meters: doubleMeters.toInt(),
//       personalBest: personalBestIT,
//       time: estimatedTime,
//       watt: wattPrevisti,
//       boatBest: boatBest,
//       nameBoat: nameBoat,
//     );
//   }

//   ThreeInputPagePlayer copyWith({
//     String? nameBoat,
//     String? boatBest,
//     IntervalTime? personalBest,
//     int? meters,
//     IntervalTime? time,
//     IntervalTime? media500,
//     double? energyExp,
//     double? watt,
//   }) {
//     return ThreeInputPagePlayer(
//       nameBoat: nameBoat ?? this.nameBoat,
//       boatBest: boatBest ?? this.boatBest,
//       personalBest: personalBest ?? this.personalBest,
//       meters: meters ?? this.meters,
//       time: time ?? this.time,
//       media500: media500 ?? this.media500,
//       energyExp: energyExp ?? this.energyExp,
//       watt: watt ?? this.watt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'nameBoat': nameBoat,
//       'boatBest': boatBest,
//       'personalBest': personalBest.toMap(),
//       'meters': meters,
//       'time': time.toMap(),
//       'media500': media500.toMap(),
//       'energyExp': energyExp,
//       'watt': watt,
//     };
//   }

//   factory ThreeInputPagePlayer.fromMap(Map<String, dynamic> map) {
//     return ThreeInputPagePlayer(
//       nameBoat: map['nameBoat'] as String,
//       boatBest: map['boatBest'] as String,
//       personalBest:
//           IntervalTime.fromMap(map['personalBest'] as Map<String, dynamic>),
//       meters: map['meters'] as int,
//       time: IntervalTime.fromMap(map['time'] as Map<String, dynamic>),
//       media500: IntervalTime.fromMap(map['media500'] as Map<String, dynamic>),
//       energyExp: map['energyExp'] as double,
//       watt: map['watt'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ThreeInputPagePlayer.fromJson(String source) =>
//       ThreeInputPagePlayer.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'ThreeInputPagePlayer(nameBoat: $nameBoat, boatBest: $boatBest, personalBest: $personalBest, meters: $meters, time: $time, media500: $media500, energyExp: $energyExp, watt: $watt)';
//   }

//   @override
//   bool operator ==(covariant ThreeInputPagePlayer other) {
//     if (identical(this, other)) return true;

//     return other.nameBoat == nameBoat &&
//         other.boatBest == boatBest &&
//         other.personalBest == personalBest &&
//         other.meters == meters &&
//         other.time == time &&
//         other.media500 == media500 &&
//         other.energyExp == energyExp &&
//         other.watt == watt;
//   }

//   @override
//   int get hashCode {
//     return nameBoat.hashCode ^
//         boatBest.hashCode ^
//         personalBest.hashCode ^
//         meters.hashCode ^
//         time.hashCode ^
//         media500.hashCode ^
//         energyExp.hashCode ^
//         watt.hashCode;
//   }
// }
