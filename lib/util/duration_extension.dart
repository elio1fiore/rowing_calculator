double timeToDecimal(int hours, int minutes, int second) {
  final int hoursPerSecond = hours * 3600;

  final int minutesPerSecond = minutes * 60;

  final secondTotal = hoursPerSecond + minutesPerSecond + second;

  return secondTotal / Duration.secondsPerDay;
}

// extension DurationExtension on Duration {
//   double get secondToDecimal => inSeconds / Duration.secondsPerDay;

//   Duration decimalToDuration(double decimal) {
//     final int second = decimal * Duration.secondsPerDay as int;

//     return Duration(seconds: second);
//   }
// }
