// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:row_calculator/one_input/presentation/one_input_page.dart'
    as _i2;
import 'package:row_calculator/one_input/presentation/result_one_input_page.dart'
    as _i3;
import 'package:row_calculator/calc/presentation/three_input/result_three_input_page.dart'
    as _i7;
import 'package:row_calculator/calc/presentation/three_input/three_input_page.dart'
    as _i6;
import 'package:row_calculator/calc/presentation/two_input/result_two_input_page.dart'
    as _i5;
import 'package:row_calculator/calc/presentation/two_input/two_input_page.dart'
    as _i4;
import 'package:row_calculator/core/presentation/list_view_methods.dart' as _i1;
import 'package:row_calculator/hits/presentation/count_hits_page.dart' as _i9;
import 'package:row_calculator/speed/presentation/speed_test.dart' as _i8;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    ListViewMethods.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ListViewMethods(),
      );
    },
    OneInputRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.OneInputPage(),
      );
    },
    ResultOneInputRoute.name: (routeData) {
      final args = routeData.argsAs<ResultOneInputRouteArgs>(
          orElse: () => const ResultOneInputRouteArgs());
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ResultOneInputPage(key: args.key),
      );
    },
    TwoInputRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.TwoInputPage(),
      );
    },
    ResultTwoInputRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ResultTwoInputPage(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.ThreeInputPage(),
      );
    },
    ResultThreeInputRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ResultThreeInputPage(),
      );
    },
    SpeedTestRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.SpeedTestPage(),
      );
    },
    CountHitsRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CountHitsPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          ListViewMethods.name,
          path: '/',
        ),
        _i10.RouteConfig(
          OneInputRoute.name,
          path: '/OneInput',
        ),
        _i10.RouteConfig(
          ResultOneInputRoute.name,
          path: '/ResultOneInputPage',
        ),
        _i10.RouteConfig(
          TwoInputRoute.name,
          path: '/TwoInput',
        ),
        _i10.RouteConfig(
          ResultTwoInputRoute.name,
          path: '/ResultTwoInputPage',
        ),
        _i10.RouteConfig(
          ThreeInputRoute.name,
          path: '/ThreeInput',
        ),
        _i10.RouteConfig(
          ResultThreeInputRoute.name,
          path: '/ResultThreeInputPage',
        ),
        _i10.RouteConfig(
          SpeedTestRoute.name,
          path: '/SpeedPageTest',
        ),
        _i10.RouteConfig(
          CountHitsRoute.name,
          path: '/CountHits',
        ),
      ];
}

/// generated route for
/// [_i1.ListViewMethods]
class ListViewMethods extends _i10.PageRouteInfo<void> {
  const ListViewMethods()
      : super(
          ListViewMethods.name,
          path: '/',
        );

  static const String name = 'ListViewMethods';
}

/// generated route for
/// [_i2.OneInputPage]
class OneInputRoute extends _i10.PageRouteInfo<void> {
  const OneInputRoute()
      : super(
          OneInputRoute.name,
          path: '/OneInput',
        );

  static const String name = 'OneInputRoute';
}

/// generated route for
/// [_i3.ResultOneInputPage]
class ResultOneInputRoute extends _i10.PageRouteInfo<ResultOneInputRouteArgs> {
  ResultOneInputRoute({_i11.Key? key})
      : super(
          ResultOneInputRoute.name,
          path: '/ResultOneInputPage',
          args: ResultOneInputRouteArgs(key: key),
        );

  static const String name = 'ResultOneInputRoute';
}

class ResultOneInputRouteArgs {
  const ResultOneInputRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ResultOneInputRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.TwoInputPage]
class TwoInputRoute extends _i10.PageRouteInfo<void> {
  const TwoInputRoute()
      : super(
          TwoInputRoute.name,
          path: '/TwoInput',
        );

  static const String name = 'TwoInputRoute';
}

/// generated route for
/// [_i5.ResultTwoInputPage]
class ResultTwoInputRoute extends _i10.PageRouteInfo<void> {
  const ResultTwoInputRoute()
      : super(
          ResultTwoInputRoute.name,
          path: '/ResultTwoInputPage',
        );

  static const String name = 'ResultTwoInputRoute';
}

/// generated route for
/// [_i6.ThreeInputPage]
class ThreeInputRoute extends _i10.PageRouteInfo<void> {
  const ThreeInputRoute()
      : super(
          ThreeInputRoute.name,
          path: '/ThreeInput',
        );

  static const String name = 'ThreeInputRoute';
}

/// generated route for
/// [_i7.ResultThreeInputPage]
class ResultThreeInputRoute extends _i10.PageRouteInfo<void> {
  const ResultThreeInputRoute()
      : super(
          ResultThreeInputRoute.name,
          path: '/ResultThreeInputPage',
        );

  static const String name = 'ResultThreeInputRoute';
}

/// generated route for
/// [_i8.SpeedTestPage]
class SpeedTestRoute extends _i10.PageRouteInfo<void> {
  const SpeedTestRoute()
      : super(
          SpeedTestRoute.name,
          path: '/SpeedPageTest',
        );

  static const String name = 'SpeedTestRoute';
}

/// generated route for
/// [_i9.CountHitsPage]
class CountHitsRoute extends _i10.PageRouteInfo<void> {
  const CountHitsRoute()
      : super(
          CountHitsRoute.name,
          path: '/CountHits',
        );

  static const String name = 'CountHitsRoute';
}
