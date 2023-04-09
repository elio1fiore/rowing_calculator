import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/router/app_router.gr.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});
