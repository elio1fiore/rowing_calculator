import 'package:freezed_annotation/freezed_annotation.dart';

part 'speed_failure.freezed.dart';

@freezed
class SpeedFailure with _$SpeedFailure {
  const factory SpeedFailure.denied() = _Denied;
  const factory SpeedFailure.deniedForever() = _DeniedForever;
  const factory SpeedFailure.whileInUse() = _WhileInUse;
  const factory SpeedFailure.always() = _Always;
  const factory SpeedFailure.isNull() = _IsNull;
  const factory SpeedFailure.unableToDetermine() = _UnableToDetermine;
}
