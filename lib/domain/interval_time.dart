import 'package:intl/intl.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:row_calculator/manual_test/main_prova.dart';

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
      return super.inSeconds / Duration.secondsPerDay;
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
    int revMillsec = millisecond;

    if (millisecond > 997) {
      revMillsec = 0;
      revSec = revSec + 1;
    }

    var secondsFormat = '';

    if (revSec.toString().length == 1) {
      secondsFormat = '0$revSec';
    } else {
      secondsFormat = '$revSec';
    }

    var milliSecFormat = '';

    if (revMillsec == 0) {
      milliSecFormat = '000';
    } else if (revMillsec.toString().length == 1) {
      milliSecFormat = '00$revMillsec';
    } else if (revMillsec.toString().length == 2) {
      milliSecFormat = '0$revMillsec';
    } else {
      milliSecFormat = '$revMillsec';
    }

    return '$minutesFormat : $secondsFormat : $milliSecFormat';
  }

  factory IntervalTime.fromBeta(double beta) {
    final seconds = beta * Duration.secondsPerDay;

    final hr = seconds / 3600;
    final hr_tr = hr.truncate();

    final day = hr_tr ~/ 24;

    final min = (hr - hr_tr) * 60;
    final min_tr = min.truncate();

    final sec = (min - min_tr) * 60;
    final sec_tr = sec.truncate();

    final millSec = (sec - sec_tr) * 1000;
    final millSec_tr = millSec.truncate();

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
