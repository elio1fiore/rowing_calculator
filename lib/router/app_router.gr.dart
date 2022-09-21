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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:row_calculator/presentation/first_calculation.dart' as _i2;
import 'package:row_calculator/presentation/list_view_methods.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ListViewMethods.name: (routeData) {
      final args = routeData.argsAs<ListViewMethodsArgs>(
          orElse: () => const ListViewMethodsArgs());
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.ListViewMethods(key: args.key));
    },
    FirstCalculationRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.FirstCalculationPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(ListViewMethods.name, path: '/'),
        _i3.RouteConfig(FirstCalculationRoute.name, path: '/first')
      ];
}

/// generated route for
/// [_i1.ListViewMethods]
class ListViewMethods extends _i3.PageRouteInfo<ListViewMethodsArgs> {
  ListViewMethods({_i4.Key? key})
      : super(ListViewMethods.name,
            path: '/', args: ListViewMethodsArgs(key: key));

  static const String name = 'ListViewMethods';
}

class ListViewMethodsArgs {
  const ListViewMethodsArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'ListViewMethodsArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.FirstCalculationPage]
class FirstCalculationRoute extends _i3.PageRouteInfo<void> {
  const FirstCalculationRoute()
      : super(FirstCalculationRoute.name, path: '/first');

  static const String name = 'FirstCalculationRoute';
}
