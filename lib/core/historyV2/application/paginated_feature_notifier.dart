import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/core/historyV2/domain/fresh.dart';
import 'package:row_calculator/core/historyV2/domain/history_failure.dart';
import 'package:row_calculator/core/historyV2/repository/feature_repository.dart';
import 'package:row_calculator/core/historyV2/utils/pagination_config.dart';

part 'paginated_feature_notifier.freezed.dart';

@freezed
class PaginatedFeatureState with _$PaginatedFeatureState {
  const factory PaginatedFeatureState.initial(
    Fresh<List<Feature>> features,
  ) = _Initial;
  const factory PaginatedFeatureState.loadInProgress(
    Fresh<List<Feature>> features,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PaginatedFeatureState.loadFailure(
    Fresh<List<Feature>> features,
    HistoryFailure failure,
  ) = _LoadFailure;
  const factory PaginatedFeatureState.loadSuccess(
    Fresh<List<Feature>> features, {
    required bool hasNextPage,
  }) = _LoadSuccess;
}

class PaginatedFeatureNotifier extends StateNotifier<PaginatedFeatureState> {
  final FeatureRepository _featureRepository;

  PaginatedFeatureNotifier(
    this._featureRepository,
  ) : super(
          PaginatedFeatureState.initial(Fresh.yes([])),
        );

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginatedFeatureState.initial(Fresh.yes([]));
  }

  Future<void> getFirstFeaturePage() async {
    resetState();
    getNextFeaturePage();
  }

  void traslaLista(List<Feature> lista, int targetId) {
    int index = lista.indexWhere((element) => element.id == targetId);

    if (index != -1) {
      // Trasla gli elementi in modo che l'elemento con l'ID target diventi il primo
      List<Feature> inizio = lista.sublist(index);
      List<Feature> fine = lista.sublist(0, index);
      lista
        ..clear()
        ..addAll(inizio)
        ..addAll(fine);
    }
  }

  Future<void> getIntervalFeatures(int startId) async {
    state = PaginatedFeatureState.loadInProgress(
      state.features,
      PaginationConfig.itemsPerPage,
    );

    final failureOrResp = await _featureRepository.getIntervalFeatures(startId);

    state = failureOrResp.fold(
      (l) {
        return PaginatedFeatureState.loadFailure(state.features, l);
      },
      (r) {
        traslaLista(r, startId);

        return PaginatedFeatureState.loadSuccess(
          Fresh.yes(r, hasNextPage: false),
          hasNextPage: false,
        );
      },
    );
  }

  Future<void> getNextFeaturePage() async {
    state = PaginatedFeatureState.loadInProgress(
      state.features,
      PaginationConfig.itemsPerPage,
    );

    final failureOrResp = await _featureRepository.getFeaturePage(_page);

    state = failureOrResp.fold(
      (l) {
        return PaginatedFeatureState.loadFailure(state.features, l);
      },
      (r) {
        if (r.isFresh) {
          _page++;
        }

        return PaginatedFeatureState.loadSuccess(
          r.copyWith(entity: [...state.features.entity, ...r.entity]),
          hasNextPage: r.hasNextPage ?? false,
        );
      },
    );
  }
}
