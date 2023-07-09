<<<<<<< Updated upstream
// import 'package:auto_route/auto_route.dart';
// import 'package:row_calculator/calc/presentation/one_input/one_input_page.dart';
// import 'package:row_calculator/calc/presentation/one_input/result_one_input_page.dart';
// import 'package:row_calculator/calc/presentation/three_input/result_three_input_page.dart';
// import 'package:row_calculator/calc/presentation/three_input/three_input_page.dart';
// import 'package:row_calculator/calc/presentation/two_input/result_two_input_page.dart';
// import 'package:row_calculator/calc/presentation/two_input/two_input_page.dart';
// import 'package:row_calculator/domain/presentation/list_view_methods.dart';
// import 'package:row_calculator/speed/presentation/speed_test.dart';

// @AdaptiveAutoRouter(
//   routes: [
//     AutoRoute(page: ListViewMethods, initial: true),
//     AutoRoute(page: OneInputPage, path: NavigatorPath.oneInputPage),
//     AutoRoute(page: ResultOneInputPage, path: NavigatorPath.resultOneInputPage),
//     AutoRoute(page: TwoInputPage, path: NavigatorPath.twoInputPage),
//     AutoRoute(page: ResultTwoInputPage, path: NavigatorPath.resultTwoInputPage),
//     AutoRoute(page: ThreeInputPage, path: NavigatorPath.threeInputPage),
//     AutoRoute(
//         page: ResultThreeInputPage, path: NavigatorPath.resultThreeInputPage),
//     AutoRoute(page: SpeedTestPage, path: NavigatorPath.speedPageTest),
//   ],
//   replaceInRouteName: 'Page,Route',
// )
// class $AppRouter {}

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
=======
import 'package:auto_route/auto_route.dart';
import 'package:row_calculator/core/presentation/list_view_methods.dart';
import 'package:row_calculator/feature/hits/presentation/count_hits_page.dart';
import 'package:row_calculator/feature/one_input/presentation/one_input_page.dart';
import 'package:row_calculator/feature/one_input/presentation/result_one_input_page.dart';
import 'package:row_calculator/feature/speed/presentation/speed_test.dart';
import 'package:row_calculator/feature/three_input/presentation/result_three_input_page.dart';
import 'package:row_calculator/feature/three_input/presentation/three_input_page.dart';
import 'package:row_calculator/feature/two_input/presentation/result_two_input_page.dart';
import 'package:row_calculator/feature/two_input/presentation/two_input_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: ListViewMethods, initial: true),
    AutoRoute(page: OneInputPage, path: NavigatorPath.oneInputPage),
    AutoRoute(page: ResultOneInputPage, path: NavigatorPath.resultOneInputPage),
    AutoRoute(page: TwoInputPage, path: NavigatorPath.twoInputPage),
    AutoRoute(page: ResultTwoInputPage, path: NavigatorPath.resultTwoInputPage),
    AutoRoute(page: ThreeInputPage, path: NavigatorPath.threeInputPage),
    AutoRoute(
        page: ResultThreeInputPage, path: NavigatorPath.resultThreeInputPage),
    AutoRoute(page: SpeedTestPage, path: NavigatorPath.speedPageTest),
    AutoRoute(page: CountHitsPage, path: NavigatorPath.countHits),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
>>>>>>> Stashed changes

abstract class NavigatorPath {
  static const String oneInputPage = "/OneInput";
  static const String twoInputPage = "/TwoInput";
  static const String threeInputPage = "/ThreeInput";
  static const String resultOneInputPage = "/ResultOneInputPage";
  static const String resultTwoInputPage = "/ResultTwoInputPage";
  static const String resultThreeInputPage = "/ResultThreeInputPage";

  static const String speedPageTest = "/SpeedPageTest";
  static const String countHits = "/CountHits";
}

@AutoRouterConfig(replaceInRouteName: 'Screen, Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [];
}

final appRouterProvider = Provider(
  (ref) => AppRouter(),
);
