// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/domain/time_on_meters.dart';
import 'package:row_calculator/core/function/functions.dart';

class OneInputPagePlayer {
  final double watt;
  final IntervalTime media500;
  final List<TimeOnMeters> listTimeOnMeters;

  OneInputPagePlayer({
    required this.watt,
    required this.media500,
    required this.listTimeOnMeters,
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

    return OneInputPagePlayer(
        watt: nWatt, listTimeOnMeters: listTimeOnMeters, media500: media);
  }

  factory OneInputPagePlayer.fromMedia500(String media) {
    final media_sp = media.split(':');

    final minutes = int.parse(media_sp[0]);
    final seconds = int.parse(media_sp[1]);
    final decs = int.parse(media_sp[2]) * 100;

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

    return OneInputPagePlayer(
      listTimeOnMeters: listTimeOnMeters,
      media500: mediaIntervalTime,
      watt: watt,
    );
  }

  OneInputPagePlayer copyWith({
    double? watt,
    IntervalTime? media500,
    List<TimeOnMeters>? listTimeOnMeters,
  }) {
    return OneInputPagePlayer(
      watt: watt ?? this.watt,
      media500: media500 ?? this.media500,
      listTimeOnMeters: listTimeOnMeters ?? this.listTimeOnMeters,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'watt': watt,
      'media500': media500.toMap(),
      'listTimeOnMeters': listTimeOnMeters.map((x) => x.toMap()).toList(),
    };
  }

  factory OneInputPagePlayer.fromMap(Map<String, dynamic> map) {
    return OneInputPagePlayer(
      watt: map['watt'] as double,
      media500: IntervalTime.fromMap(map['media500'] as Map<String, dynamic>),
      listTimeOnMeters: List<TimeOnMeters>.from(
        (map['listTimeOnMeters'] as List<int>).map<TimeOnMeters>(
          (x) => TimeOnMeters.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory OneInputPagePlayer.fromJson(String source) =>
      OneInputPagePlayer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'OneInputPagePlayer(watt: $watt, media500: $media500, listTimeOnMeters: $listTimeOnMeters)';

  @override
  bool operator ==(covariant OneInputPagePlayer other) {
    if (identical(this, other)) return true;

    return other.watt == watt &&
        other.media500 == media500 &&
        listEquals(other.listTimeOnMeters, listTimeOnMeters);
  }

  @override
  int get hashCode =>
      watt.hashCode ^ media500.hashCode ^ listTimeOnMeters.hashCode;
}
