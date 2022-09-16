import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:row_calculator/presentation/first_calculation.dart';
import 'package:row_calculator/presentation/list_view_methods.dart';
import 'package:row_calculator/presentation/second_calculation.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: ListViewMethods, initial: true),
    AutoRoute(
      page: FirstCalculationPage,
      path: NavigatorPath.firstCalculationPage,
    ),
    AutoRoute(
      page: SecondCalculationPage,
      path: NavigatorPath.secondCalculationPage,
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

abstract class NavigatorPath {
  static const String firstCalculationPage = "/first";
  static const String secondCalculationPage = "/second";
}
