import 'package:auto_route/auto_route.dart';
import 'package:row_calculator/presentation/three_input/result_three_input_page.dart';
import 'package:row_calculator/presentation/three_input/three_input_page.dart';
import 'package:row_calculator/presentation/two_input/result_two_input_page.dart';
import 'package:row_calculator/presentation/two_input/two_input_page.dart';

import '../presentation/list_view_methods.dart';
import '../presentation/one_input/one_input_page.dart';
import '../presentation/one_input/result_one_input_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: ListViewMethods, initial: true),
    AutoRoute(page: OneInputPage, path: NavigatorPath.oneInputPage),
    AutoRoute(page: ResultOneInputPage, path: NavigatorPath.resultOneInputPage),
    AutoRoute(page: TwoInputPage, path: NavigatorPath.twoInputPage),
    AutoRoute(page: ResultTwoInputPage, path: NavigatorPath.resultTwoInputPage),
    AutoRoute(page: ThreeInputPage, path: NavigatorPath.threeInputPage),
    AutoRoute(
        page: ResultThreeInputPage, path: NavigatorPath.resultThreeInputPage)
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

abstract class NavigatorPath {
  static const String oneInputPage = "/OneInput";
  static const String twoInputPage = "/TwoInput";
  static const String threeInputPage = "/ThreeInput";
  static const String resultOneInputPage = "/ResultOneInputPage";
  static const String resultTwoInputPage = "/ResultTwoInputPage";
  static const String resultThreeInputPage = "/ResultThreeInputPage";

  static const String speedPageTest = "/speedPageTest";
}
