import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:row_calculator/presentation/list_view_methods.dart';
import 'package:row_calculator/presentation/one_input_page.dart';
import 'package:row_calculator/presentation/result_one_input_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: ListViewMethods, initial: true),
    AutoRoute(page: OneInputPage, path: NavigatorPath.oneInputPage),
    AutoRoute(page: ResultOneInputPage, path: NavigatorPath.resultOneInputPage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

abstract class NavigatorPath {
  static const String oneInputPage = "/OneInput";
  static const String resultOneInputPage = "/ResultOneInputPage";
}
