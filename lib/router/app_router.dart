import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/router/app_router.gr.dart';

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
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OneInputPage.page,
        )
      ];
}

final appRouterProvider = Provider(
  (ref) => AppRouter(),
);
