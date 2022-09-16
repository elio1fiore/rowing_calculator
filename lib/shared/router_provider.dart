import 'package:row_calculator/router/app_router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});
