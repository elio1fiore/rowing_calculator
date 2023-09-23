import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/application/theme_notifier.dart';

final themeProviderNotifier = StateNotifierProvider<ThemeNotifier, bool>(
  (ref) => ThemeNotifier(),
);
