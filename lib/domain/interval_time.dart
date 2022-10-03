import 'package:intl/intl.dart';
import 'package:row_calculator/function/functions.dart';

class IntervalTime extends Duration {
  final double? beta;
  final int days;
  final int hours;
  final int minutes;
  final int seconds;
  final int millisecond;
  final int microsecond;

  IntervalTime({
    this.beta,
    this.days = 0,
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
    this.microsecond = 0,
    this.millisecond = 0,
  }) : super(
            days: days,
            hours: hours,
            minutes: minutes,
            seconds: seconds,
            milliseconds: millisecond,
            microseconds: microsecond);

  double get betaValue {
    if (beta == null) {
      return super.inMilliseconds / Duration.millisecondsPerDay;
    } else {
      return beta!;
    }
  }

  String get valueMinuteSecondMillisecond {
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

    return '$minutesFormat : $secondsFormat : $millisecond';
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
      millisecond: millSec_tr,
      microsecond: 0,
    );
  }
}
