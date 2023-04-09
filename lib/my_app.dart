import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:row_calculator/shared/router_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true),
      title: 'Row Calculator',
      routerDelegate: appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
