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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:row_calculator/calc/presentation/one_input/one_input_page.dart'
    as _i2;
import 'package:row_calculator/calc/presentation/one_input/result_one_input_page.dart'
    as _i3;
import 'package:row_calculator/calc/presentation/three_input/result_three_input_page.dart'
    as _i7;
import 'package:row_calculator/calc/presentation/three_input/three_input_page.dart'
    as _i6;
import 'package:row_calculator/calc/presentation/two_input/result_two_input_page.dart'
    as _i5;
import 'package:row_calculator/calc/presentation/two_input/two_input_page.dart'
    as _i4;
import 'package:row_calculator/domain/presentation/list_view_methods.dart'
    as _i1;
import 'package:row_calculator/speed/presentation/speed_test.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ListViewMethods.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ListViewMethods(),
      );
    },
    OneInputRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.OneInputPage(),
      );
    },
    ResultOneInputRoute.name: (routeData) {
      final args = routeData.argsAs<ResultOneInputRouteArgs>(
          orElse: () => const ResultOneInputRouteArgs());
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ResultOneInputPage(key: args.key),
      );
    },
    TwoInputRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.TwoInputPage(),
      );
    },
    ResultTwoInputRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ResultTwoInputPage(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.ThreeInputPage(),
      );
    },
    ResultThreeInputRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ResultThreeInputPage(),
      );
    },
    SpeedTestRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.SpeedTestPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          ListViewMethods.name,
          path: '/',
        ),
        _i9.RouteConfig(
          OneInputRoute.name,
          path: '/OneInput',
        ),
        _i9.RouteConfig(
          ResultOneInputRoute.name,
          path: '/ResultOneInputPage',
        ),
        _i9.RouteConfig(
          TwoInputRoute.name,
          path: '/TwoInput',
        ),
        _i9.RouteConfig(
          ResultTwoInputRoute.name,
          path: '/ResultTwoInputPage',
        ),
        _i9.RouteConfig(
          ThreeInputRoute.name,
          path: '/ThreeInput',
        ),
        _i9.RouteConfig(
          ResultThreeInputRoute.name,
          path: '/ResultThreeInputPage',
        ),
        _i9.RouteConfig(
          SpeedTestRoute.name,
          path: '/speedPageTest',
        ),
      ];
}

/// generated route for
/// [_i1.ListViewMethods]
class ListViewMethods extends _i9.PageRouteInfo<void> {
  const ListViewMethods()
      : super(
          ListViewMethods.name,
          path: '/',
        );

  static const String name = 'ListViewMethods';
}

/// generated route for
/// [_i2.OneInputPage]
class OneInputRoute extends _i9.PageRouteInfo<void> {
  const OneInputRoute()
      : super(
          OneInputRoute.name,
          path: '/OneInput',
        );

  static const String name = 'OneInputRoute';
}

/// generated route for
/// [_i3.ResultOneInputPage]
class ResultOneInputRoute extends _i9.PageRouteInfo<ResultOneInputRouteArgs> {
  ResultOneInputRoute({_i10.Key? key})
      : super(
          ResultOneInputRoute.name,
          path: '/ResultOneInputPage',
          args: ResultOneInputRouteArgs(key: key),
        );

  static const String name = 'ResultOneInputRoute';
}

class ResultOneInputRouteArgs {
  const ResultOneInputRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'ResultOneInputRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.TwoInputPage]
class TwoInputRoute extends _i9.PageRouteInfo<void> {
  const TwoInputRoute()
      : super(
          TwoInputRoute.name,
          path: '/TwoInput',
        );

  static const String name = 'TwoInputRoute';
}

/// generated route for
/// [_i5.ResultTwoInputPage]
class ResultTwoInputRoute extends _i9.PageRouteInfo<void> {
  const ResultTwoInputRoute()
      : super(
          ResultTwoInputRoute.name,
          path: '/ResultTwoInputPage',
        );

  static const String name = 'ResultTwoInputRoute';
}

/// generated route for
/// [_i6.ThreeInputPage]
class ThreeInputRoute extends _i9.PageRouteInfo<void> {
  const ThreeInputRoute()
      : super(
          ThreeInputRoute.name,
          path: '/ThreeInput',
        );

  static const String name = 'ThreeInputRoute';
}

/// generated route for
/// [_i7.ResultThreeInputPage]
class ResultThreeInputRoute extends _i9.PageRouteInfo<void> {
  const ResultThreeInputRoute()
      : super(
          ResultThreeInputRoute.name,
          path: '/ResultThreeInputPage',
        );

  static const String name = 'ResultThreeInputRoute';
}

/// generated route for
/// [_i8.SpeedTestPage]
class SpeedTestRoute extends _i9.PageRouteInfo<void> {
  const SpeedTestRoute()
      : super(
          SpeedTestRoute.name,
          path: '/speedPageTest',
        );

  static const String name = 'SpeedTestRoute';
}
