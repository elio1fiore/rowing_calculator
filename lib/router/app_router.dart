import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:row_calculator/core/historyV2/presentation/carousel_slider_page.dart';
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

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: "/",
          children: [
            AutoRoute(
              page: FeatureRoute.page,
              path: 'feature',
              children: [
                AutoRoute(
                  page: FeatureListRoute.page,
                  path: "",
                  initial: true,
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
                  page: SpeedStokersRouteV2.page,
                  path: "speed-strokes",
                ),
              ],
            ),
            AutoRoute(
              page: HistoryRoute.page,
              path: 'history',
              maintainState: false,
              children: [
                AutoRoute(
                  page: HistoryListRoute.page,
                  path: "",
                  initial: true,
                  maintainState: false,
                ),
                AutoRoute(
                  page: CarouselSliderPage.page,
                  path: "template",
                  maintainState: false,
                ),
              ],
            ),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

final appRouterProvider = Provider(
  (ref) => AppRouter(),
);
