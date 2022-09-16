import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/myapp.dart';

Future<void> main() async {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}
