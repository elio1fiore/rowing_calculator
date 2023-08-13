// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:row_calculator/core/presentation/features.dart' as _i3;
import 'package:row_calculator/core/presentation/history.dart' as _i2;
import 'package:row_calculator/core/presentation/home.dart' as _i1;
import 'package:row_calculator/feature/one_input/presentation/one_feature_page.dart'
    as _i4;
import 'package:row_calculator/feature/three_input/presentation/old/three_input_page.dart'
    as _i7;
import 'package:row_calculator/feature/two_input/presentation/old/two_input_page.dart'
    as _i6;
import 'package:row_calculator/feature/two_input/presentation/two_feature_page.dart'
    as _i5;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HistoryPage(),
      );
    },
    FeatureRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeaturePage(),
      );
    },
    FeatureListRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeatureListPage(),
      );
    },
    OneFeatureRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OneFeaturePage(),
      );
    },
    TwoFeatureRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TwoFeaturePage(),
      );
    },
    TwoInputView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TwoInputView(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ThreeInputPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HistoryPage]
class HistoryRoute extends _i8.PageRouteInfo<void> {
  const HistoryRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeaturePage]
class FeatureRoute extends _i8.PageRouteInfo<void> {
  const FeatureRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeatureListPage]
class FeatureListRoute extends _i8.PageRouteInfo<void> {
  const FeatureListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FeatureListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureListRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OneFeaturePage]
class OneFeatureRoute extends _i8.PageRouteInfo<void> {
  const OneFeatureRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OneFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneFeatureRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TwoFeaturePage]
class TwoFeatureRoute extends _i8.PageRouteInfo<void> {
  const TwoFeatureRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TwoFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoFeatureRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TwoInputView]
class TwoInputView extends _i8.PageRouteInfo<void> {
  const TwoInputView({List<_i8.PageRouteInfo>? children})
      : super(
          TwoInputView.name,
          initialChildren: children,
        );

  static const String name = 'TwoInputView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ThreeInputPage]
class ThreeInputRoute extends _i8.PageRouteInfo<void> {
  const ThreeInputRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ThreeInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeInputRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
