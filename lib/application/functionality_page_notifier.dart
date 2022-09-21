import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:row_calculator/domain/functionality.dart';
import 'package:row_calculator/router/app_router.gr.dart';

part 'functionality_page_notifier.freezed.dart';

@freezed
class FunctionalityPageState with _$FunctionalityPageState {
  const factory FunctionalityPageState.initial() = _Initial;
  const factory FunctionalityPageState.selected(
    Functionality functionality,
  ) = _Selected;
}

class FunctionalityPageNotifier extends StateNotifier<FunctionalityPageState> {
  final AppRouter _appRouter;
  FunctionalityPageNotifier(this._appRouter)
      : super(
          const FunctionalityPageState.initial(),
        );
}
