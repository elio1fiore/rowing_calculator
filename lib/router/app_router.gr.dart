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
import 'package:row_calculator/presentation/first_calculation.dart' as _i2;
import 'package:row_calculator/presentation/list_view_methods.dart' as _i1;
import 'package:row_calculator/presentation/second_calculation.dart' as _i3;

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
    FirstCalculationRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstCalculationPage());
    },
    SecondCalculationRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SecondCalculationPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(ListViewMethods.name, path: '/'),
        _i4.RouteConfig(FirstCalculationRoute.name, path: '/first'),
        _i4.RouteConfig(SecondCalculationRoute.name, path: '/second')
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
/// [_i2.FirstCalculationPage]
class FirstCalculationRoute extends _i4.PageRouteInfo<void> {
  const FirstCalculationRoute()
      : super(FirstCalculationRoute.name, path: '/first');

  static const String name = 'FirstCalculationRoute';
}

/// generated route for
/// [_i3.SecondCalculationPage]
class SecondCalculationRoute extends _i4.PageRouteInfo<void> {
  const SecondCalculationRoute()
      : super(SecondCalculationRoute.name, path: '/second');

  static const String name = 'SecondCalculationRoute';
}
