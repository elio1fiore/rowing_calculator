// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/function/functions.dart';

class TwoInputPagePlayer2 {
  final IntervalTime media500;
  final double percentualeRichiesta;
  final double watt;
  final double wattInPercentuale;
  final IntervalTime media500InPercentuale;

  TwoInputPagePlayer2({
    required this.media500,
    required this.percentualeRichiesta,
    required this.watt,
    required this.wattInPercentuale,
    required this.media500InPercentuale,
  });

  factory TwoInputPagePlayer2.fromM500P({
    required String media500,
    required String percentualeRichiesta,
  }) {
    final media_sp = media500.split(':');

    final minutes = int.parse(media_sp[0]);
    final seconds = int.parse(media_sp[1]);
    final decs = int.parse(media_sp[2]);

    final IntervalTime mediaIT = IntervalTime(
      minutes: minutes,
      seconds: seconds,
      milliseconds: decs,
    );

    final npr = double.parse(percentualeRichiesta);
    final watt = calcWatt(mediaCinquecento: mediaIT);
    final wattXPerc = wattXPercentual(
      numberPerc: npr,
      watt: watt,
    );
    final mediaPerc = mediaXPercentual(
      wattXPercentual: wattXPerc,
    );

    return TwoInputPagePlayer2(
      media500: mediaIT,
      media500InPercentuale: mediaPerc,
      percentualeRichiesta: npr,
      watt: watt,
      wattInPercentuale: wattXPerc,
    );
  }

  TwoInputPagePlayer2 copyWith({
    IntervalTime? media500,
    double? percentualeRichiesta,
    double? watt,
    double? wattInPercentuale,
    IntervalTime? media500InPercentuale,
  }) {
    return TwoInputPagePlayer2(
      media500: media500 ?? this.media500,
      percentualeRichiesta: percentualeRichiesta ?? this.percentualeRichiesta,
      watt: watt ?? this.watt,
      wattInPercentuale: wattInPercentuale ?? this.wattInPercentuale,
      media500InPercentuale:
          media500InPercentuale ?? this.media500InPercentuale,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'media500': media500.toMap(),
      'percentualeRichiesta': percentualeRichiesta,
      'watt': watt,
      'wattInPercentuale': wattInPercentuale,
      'media500InPercentuale': media500InPercentuale.toMap(),
    };
  }

  factory TwoInputPagePlayer2.fromMap(Map<String, dynamic> map) {
    return TwoInputPagePlayer2(
      media500: IntervalTime.fromMap(map['media500'] as Map<String, dynamic>),
      percentualeRichiesta: map['percentualeRichiesta'] as double,
      watt: map['watt'] as double,
      wattInPercentuale: map['wattInPercentuale'] as double,
      media500InPercentuale: IntervalTime.fromMap(
          map['media500InPercentuale'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory TwoInputPagePlayer2.fromJson(String source) =>
      TwoInputPagePlayer2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TwoInputPagePlayer2(media500: $media500, percentualeRichiesta: $percentualeRichiesta, watt: $watt, wattInPercentuale: $wattInPercentuale, media500InPercentuale: $media500InPercentuale)';
  }

  @override
  bool operator ==(covariant TwoInputPagePlayer2 other) {
    if (identical(this, other)) return true;

    return other.media500 == media500 &&
        other.percentualeRichiesta == percentualeRichiesta &&
        other.watt == watt &&
        other.wattInPercentuale == wattInPercentuale &&
        other.media500InPercentuale == media500InPercentuale;
  }

  @override
  int get hashCode {
    return media500.hashCode ^
        percentualeRichiesta.hashCode ^
        watt.hashCode ^
        wattInPercentuale.hashCode ^
        media500InPercentuale.hashCode;
  }
}
