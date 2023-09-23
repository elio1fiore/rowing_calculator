import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/history_failure.dart';
import 'package:row_calculator/core/historyV2/repository/feature_repository.dart';

part 'template_details_notifier.freezed.dart';

@freezed
class TemplateDetailsState with _$TemplateDetailsState {
  const factory TemplateDetailsState.init() = _Init;
  const factory TemplateDetailsState.progress() = _Progress;
  const factory TemplateDetailsState.success(
    Feature feature,
  ) = _Success;
  const factory TemplateDetailsState.error(
    HistoryFailure failure,
  ) = _Error;
}

class TemplateDetailsNotifier extends StateNotifier<TemplateDetailsState> {
  final FeatureRepository _featureRepository;

  TemplateDetailsNotifier(this._featureRepository)
      : super(const TemplateDetailsState.init());

  Future<void> getFeature(int id) async {
    state = const TemplateDetailsState.progress();

    final failureOrResp = await _featureRepository.getFeatureById(id);

    state = failureOrResp.fold(
      (l) {
        return TemplateDetailsState.error(l);
      },
      (r) {
        return TemplateDetailsState.success(r);
      },
    );
  }

  Future<void> updateFeatureComment(int id, String comment) async {
    final failureOrUpdatedFeature =
        await _featureRepository.updateComment(id, comment);

    state = failureOrUpdatedFeature.fold(
      (l) => TemplateDetailsState.error(l),
      (r) => TemplateDetailsState.success(r),
    );
  }
}
