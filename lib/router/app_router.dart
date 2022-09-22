import 'package:auto_route/auto_route.dart';
import 'package:row_calculator/presentation/list_view_methods.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: ListViewMethods, initial: true),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

abstract class NavigatorPath {
  static const String firstCalculationPage = "/first";
  static const String secondCalculationPage = "/second";
}
