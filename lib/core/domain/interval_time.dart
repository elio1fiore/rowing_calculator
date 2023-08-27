// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:row_calculator/core/function/functions.dart';

class IntervalTime extends Duration {
  final double? beta;
  final int days;
  final int hours;
  final int minutes;
  final int seconds;
  final int milliseconds;
  final int microseconds;

  IntervalTime({
    this.beta,
    this.days = 0,
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
    this.milliseconds = 0,
    this.microseconds = 0,
  }) : super(
          days: days,
          hours: hours,
          minutes: minutes,
          seconds: seconds,
          milliseconds: milliseconds,
          microseconds: microseconds,
        );

  double get betaValue {
    if (beta == null) {
      return super.inMilliseconds / Duration.millisecondsPerDay;
    } else {
      return beta!;
    }
  }

  String get valueMinuteSecond {
    var minutesFormat = '';

    if (minutes.toString().length == 1) {
      minutesFormat = '0$minutes';
    } else {
      minutesFormat = '$minutes';
    }

    int revSec = seconds;

    var secondsFormat = '';

    if (revSec.toString().length == 1) {
      secondsFormat = '0$revSec';
    } else {
      secondsFormat = '$revSec';
    }

    return '$minutesFormat : $secondsFormat';
  }

  String get valueMinuteSecondMillisecondTwo {
    var minutesFormat = '';

    if (minutes.toString().length == 1) {
      minutesFormat = '0$minutes';
    } else {
      minutesFormat = '$minutes';
    }

    int revSec = seconds;
    int revMill = milliseconds;

    var secondsFormat = '';

    if (revSec.toString().length == 1) {
      secondsFormat = '0$revSec';
    } else {
      secondsFormat = '$revSec';
    }

    return '$minutesFormat : $secondsFormat : $revMill';
  }

  String get valueMinuteSecondMillisecondOne {
    var minutesFormat = '';

    if (minutes.toString().length == 1) {
      minutesFormat = '0$minutes';
    } else {
      minutesFormat = '$minutes';
    }

    int revSec = seconds;
    int revMill = milliseconds;

    var secondsFormat = '';

    if (revSec.toString().length == 1) {
      secondsFormat = '0$revSec';
    } else {
      secondsFormat = '$revSec';
    }

    var milliFormat = '';

    if (revMill.toString().length == 1) {
      milliFormat = '$revMill';
    } else if (revMill.toString().length == 2) {
      final revMill_d = revMill / 10;
      final revMill_dp = dp(revMill_d, 0);

      milliFormat = '${revMill_dp.toInt()}';
    } else {
      final revMill_d = revMill / 100;
      final revMill_dp = dp(revMill_d, 0);

      milliFormat = '${revMill_dp.toInt()}';
    }

    return '$minutesFormat : $secondsFormat : $milliFormat';
  }

  factory IntervalTime.fromBeta(double beta) {
    final seconds = beta * Duration.secondsPerDay;

    final hr = seconds / 3600;
    final hr_tr = hr.toInt();

    final day = hr_tr ~/ 24;

    final min = (hr - hr_tr) * 60;
    final min_tr = min.toInt();

    final sec = (min - min_tr) * 60;
    final sec_tr = sec.toInt();

    final millSec = (sec - sec_tr) * 1000;
    final millSec_tr = millSec.toInt();

    return IntervalTime(
      beta: beta,
      days: day,
      hours: hr_tr,
      minutes: min_tr,
      seconds: sec_tr,
      milliseconds: millSec_tr,
      microseconds: 0,
    );
  }

  IntervalTime copyWith({
    double? beta,
    int? days,
    int? hours,
    int? minutes,
    int? seconds,
    int? milliseconds,
    int? microseconds,
  }) {
    return IntervalTime(
      beta: beta ?? this.beta,
      days: days ?? this.days,
      hours: hours ?? this.hours,
      minutes: minutes ?? this.minutes,
      seconds: seconds ?? this.seconds,
      milliseconds: milliseconds ?? this.milliseconds,
      microseconds: microseconds ?? this.microseconds,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beta': beta,
      'days': days,
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
      'milliseconds': milliseconds,
      'microseconds': microseconds,
    };
  }

  factory IntervalTime.fromMap(Map<String, dynamic> map) {
    return IntervalTime(
      beta: map['beta'] != null ? map['beta'] as double : null,
      days: map['days'] as int,
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      seconds: map['seconds'] as int,
      milliseconds: map['milliseconds'] as int,
      microseconds: map['microseconds'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory IntervalTime.fromJson(String source) =>
      IntervalTime.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IntervalTime(beta: $beta, days: $days, hours: $hours, minutes: $minutes, seconds: $seconds, milliseconds: $milliseconds, microseconds: $microseconds)';
  }

  @override
  bool operator ==(covariant IntervalTime other) {
    if (identical(this, other)) return true;

    return other.beta == beta &&
        other.days == days &&
        other.hours == hours &&
        other.minutes == minutes &&
        other.seconds == seconds &&
        other.milliseconds == milliseconds &&
        other.microseconds == microseconds;
  }

  @override
  int get hashCode {
    return beta.hashCode ^
        days.hashCode ^
        hours.hashCode ^
        minutes.hashCode ^
        seconds.hashCode ^
        milliseconds.hashCode ^
        microseconds.hashCode;
  }
}
