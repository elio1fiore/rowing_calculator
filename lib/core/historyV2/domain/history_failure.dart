import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_failure.freezed.dart';

@freezed
class HistoryFailure with _$HistoryFailure {
  const factory HistoryFailure.db(String error) = _Db;
}
