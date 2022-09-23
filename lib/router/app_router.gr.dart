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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:row_calculator/presentation/list_view_methods.dart' as _i1;
import 'package:row_calculator/presentation/one_input_page.dart' as _i2;
import 'package:row_calculator/presentation/result_one_input_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ListViewMethods.name: (routeData) {
      final args = routeData.argsAs<ListViewMethodsArgs>(
          orElse: () => const ListViewMethodsArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.ListViewMethods(key: args.key));
    },
    OneInputRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.OneInputPage());
    },
    ResultOneInputRoute.name: (routeData) {
      final args = routeData.argsAs<ResultOneInputRouteArgs>(
          orElse: () => const ResultOneInputRouteArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.ResultOneInputPage(key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(ListViewMethods.name, path: '/'),
        _i4.RouteConfig(OneInputRoute.name, path: '/OneInput'),
        _i4.RouteConfig(ResultOneInputRoute.name, path: '/ResultOneInputPage')
      ];
}

/// generated route for
/// [_i1.ListViewMethods]
class ListViewMethods extends _i4.PageRouteInfo<ListViewMethodsArgs> {
  ListViewMethods({_i5.Key? key})
      : super(ListViewMethods.name,
            path: '/', args: ListViewMethodsArgs(key: key));

  static const String name = 'ListViewMethods';
}

class ListViewMethodsArgs {
  const ListViewMethodsArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'ListViewMethodsArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.OneInputPage]
class OneInputRoute extends _i4.PageRouteInfo<void> {
  const OneInputRoute() : super(OneInputRoute.name, path: '/OneInput');

  static const String name = 'OneInputRoute';
}

/// generated route for
/// [_i3.ResultOneInputPage]
class ResultOneInputRoute extends _i4.PageRouteInfo<ResultOneInputRouteArgs> {
  ResultOneInputRoute({_i5.Key? key})
      : super(ResultOneInputRoute.name,
            path: '/ResultOneInputPage',
            args: ResultOneInputRouteArgs(key: key));

  static const String name = 'ResultOneInputRoute';
}

class ResultOneInputRouteArgs {
  const ResultOneInputRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'ResultOneInputRouteArgs{key: $key}';
  }
}
