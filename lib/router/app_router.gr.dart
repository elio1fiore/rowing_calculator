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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:row_calculator/presentation/list_view_methods.dart' as _i1;
import 'package:row_calculator/presentation/one_input/one_input_page.dart'
    as _i2;
import 'package:row_calculator/presentation/one_input/result_one_input_page.dart'
    as _i3;
import 'package:row_calculator/presentation/two_input/result_two_input_page.dart'
    as _i5;
import 'package:row_calculator/presentation/two_input/two_input_page.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ListViewMethods.name: (routeData) {
      final args = routeData.argsAs<ListViewMethodsArgs>(
          orElse: () => const ListViewMethodsArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.ListViewMethods(key: args.key));
    },
    OneInputRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.OneInputPage());
    },
    ResultOneInputRoute.name: (routeData) {
      final args = routeData.argsAs<ResultOneInputRouteArgs>(
          orElse: () => const ResultOneInputRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.ResultOneInputPage(key: args.key));
    },
    TwoInputRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.TwoInputPage());
    },
    ResultTwoInputRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ResultTwoInputPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(ListViewMethods.name, path: '/'),
        _i6.RouteConfig(OneInputRoute.name, path: '/OneInput'),
        _i6.RouteConfig(ResultOneInputRoute.name, path: '/ResultOneInputPage'),
        _i6.RouteConfig(TwoInputRoute.name, path: '/TwoInput'),
        _i6.RouteConfig(ResultTwoInputRoute.name, path: '/ResultTwoInputPage')
      ];
}

/// generated route for
/// [_i1.ListViewMethods]
class ListViewMethods extends _i6.PageRouteInfo<ListViewMethodsArgs> {
  ListViewMethods({_i7.Key? key})
      : super(ListViewMethods.name,
            path: '/', args: ListViewMethodsArgs(key: key));

  static const String name = 'ListViewMethods';
}

class ListViewMethodsArgs {
  const ListViewMethodsArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'ListViewMethodsArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.OneInputPage]
class OneInputRoute extends _i6.PageRouteInfo<void> {
  const OneInputRoute() : super(OneInputRoute.name, path: '/OneInput');

  static const String name = 'OneInputRoute';
}

/// generated route for
/// [_i3.ResultOneInputPage]
class ResultOneInputRoute extends _i6.PageRouteInfo<ResultOneInputRouteArgs> {
  ResultOneInputRoute({_i7.Key? key})
      : super(ResultOneInputRoute.name,
            path: '/ResultOneInputPage',
            args: ResultOneInputRouteArgs(key: key));

  static const String name = 'ResultOneInputRoute';
}

class ResultOneInputRouteArgs {
  const ResultOneInputRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'ResultOneInputRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.TwoInputPage]
class TwoInputRoute extends _i6.PageRouteInfo<void> {
  const TwoInputRoute() : super(TwoInputRoute.name, path: '/TwoInput');

  static const String name = 'TwoInputRoute';
}

/// generated route for
/// [_i5.ResultTwoInputPage]
class ResultTwoInputRoute extends _i6.PageRouteInfo<void> {
  const ResultTwoInputRoute()
      : super(ResultTwoInputRoute.name, path: '/ResultTwoInputPage');

  static const String name = 'ResultTwoInputRoute';
}
