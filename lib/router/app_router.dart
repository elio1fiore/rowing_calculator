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

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: "/",
          children: [
            // RedirectRoute(
            //   path: "",
            //   redirectTo: 'feature',
            // ),
            AutoRoute(
              page: FeatureRoute.page,
              path: 'feature',
              children: [
                AutoRoute(
                  page: FeatureListRoute.page,
                  path: "",
                ),
                AutoRoute(
                  page: OneFeatureRoute.page,
                  path: "one",
                ),
                AutoRoute(
                  page: TwoFeatureRoute.page,
                  path: "two",
                ),
                AutoRoute(
                  page: ThreeFeatureRoute.page,
                  path: "three",
                ),
                AutoRoute(
                  page: SpeedStrokesRoute.page,
                  path: "speed-strokes",
                ),
              ],
            ),
            AutoRoute(
              page: HistoryRoute.page,
              path: 'history',
            ),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

final appRouterProvider = Provider(
  (ref) => AppRouter(),
);
