// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:row_calculator/core/presentation/features.dart' as _i3;
import 'package:row_calculator/core/presentation/history.dart' as _i2;
import 'package:row_calculator/core/presentation/home.dart' as _i1;
import 'package:row_calculator/feature/one_input/presentation/one_feature_page.dart'
    as _i6;
import 'package:row_calculator/feature/three_input/presentation/three_input_page.dart'
    as _i5;
import 'package:row_calculator/feature/two_input/presentation/two_input_page.dart'
    as _i4;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HistoryPage(),
      );
    },
    FeatureRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeaturePage(),
      );
    },
    FeatureListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeatureListPage(),
      );
    },
    TwoInputRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TwoInputPage(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ThreeInputPage(),
      );
    },
    OneFeatureRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OneFeaturePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HistoryPage]
class HistoryRoute extends _i7.PageRouteInfo<void> {
  const HistoryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeaturePage]
class FeatureRoute extends _i7.PageRouteInfo<void> {
  const FeatureRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeatureListPage]
class FeatureListRoute extends _i7.PageRouteInfo<void> {
  const FeatureListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FeatureListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TwoInputPage]
class TwoInputRoute extends _i7.PageRouteInfo<void> {
  const TwoInputRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TwoInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoInputRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ThreeInputPage]
class ThreeInputRoute extends _i7.PageRouteInfo<void> {
  const ThreeInputRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ThreeInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeInputRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OneFeaturePage]
class OneFeatureRoute extends _i7.PageRouteInfo<void> {
  const OneFeatureRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OneFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneFeatureRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
