import 'package:row_calculator/application/functionality_page_notifier.dart';
import 'package:row_calculator/router/app_router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

final functionalityPageProvider =
    StateNotifierProvider<FunctionalityPageNotifier, FunctionalityPageState>(
  (ref) {
    return FunctionalityPageNotifier();
  },
);
