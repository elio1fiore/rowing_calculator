import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_response.freezed.dart';

@freezed
class LocalResponse<T> with _$LocalResponse<T> {
  const factory LocalResponse.withNewData(
    T data, {
    required int maxPage,
  }) = _WithNewData<T>;
  const factory LocalResponse.problemDB() = _ProblemDB<T>;
}
