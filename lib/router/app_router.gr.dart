// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:row_calculator/core/historyV2/presentation/history.dart' as _i5;
import 'package:row_calculator/core/historyV2/presentation/internal/one_history_details_page.dart'
    as _i2;
import 'package:row_calculator/core/historyV2/presentation/internal/three_history_details_page.dart'
    as _i4;
import 'package:row_calculator/core/historyV2/presentation/internal/two_one_history_details_page.dart'
    as _i3;
import 'package:row_calculator/core/historyV2/presentation/internal/two_two_history_details_page.dart'
    as _i1;
import 'package:row_calculator/core/presentation/features.dart' as _i7;
import 'package:row_calculator/core/presentation/home.dart' as _i6;
import 'package:row_calculator/feature/one_input/presentation/one_feature_page.dart'
    as _i12;
import 'package:row_calculator/feature/speed_strokes/presentation/speed_stokers_page.dart'
    as _i13;
import 'package:row_calculator/feature/three_input/presentation/old/three_input_page.dart'
    as _i11;
import 'package:row_calculator/feature/three_input/presentation/three_feature_page.dart'
    as _i10;
import 'package:row_calculator/feature/two_input/presentation/old/two_input_page.dart'
    as _i8;
import 'package:row_calculator/feature/two_input/presentation/two_feature_page.dart'
    as _i9;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    TwoTwoHistoryDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TwoTwoHistoryDetailsRouteArgs>(
          orElse: () =>
              TwoTwoHistoryDetailsRouteArgs(id: pathParams.getString('id')));
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.TwoTwoHistoryDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    OneHistoryDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OneHistoryDetailsRouteArgs>(
          orElse: () =>
              OneHistoryDetailsRouteArgs(id: pathParams.getString('id')));
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.OneHistoryDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    TwoOneHistoryDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TwoOneHistoryDetailsRouteArgs>(
          orElse: () =>
              TwoOneHistoryDetailsRouteArgs(id: pathParams.getString('id')));
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.TwoOneHistoryDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ThreeHistoryDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ThreeHistoryDetailsRouteArgs>(
          orElse: () =>
              ThreeHistoryDetailsRouteArgs(id: pathParams.getString('id')));
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ThreeHistoryDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HistoryPage(),
      );
    },
    HistoryListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HistoryListPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    FeatureRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FeaturePage(),
      );
    },
    FeatureListRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FeatureListPage(),
      );
    },
    TwoInputView.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.TwoInputView(),
      );
    },
    TwoFeatureRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TwoFeaturePage(),
      );
    },
    ThreeFeatureRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ThreeFeaturePage(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ThreeInputPage(),
      );
    },
    OneFeatureRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OneFeaturePage(),
      );
    },
    SpeedStrokesRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SpeedStrokesPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.TwoTwoHistoryDetailsPage]
class TwoTwoHistoryDetailsRoute
    extends _i14.PageRouteInfo<TwoTwoHistoryDetailsRouteArgs> {
  TwoTwoHistoryDetailsRoute({
    _i15.Key? key,
    required String id,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TwoTwoHistoryDetailsRoute.name,
          args: TwoTwoHistoryDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'TwoTwoHistoryDetailsRoute';

  static const _i14.PageInfo<TwoTwoHistoryDetailsRouteArgs> page =
      _i14.PageInfo<TwoTwoHistoryDetailsRouteArgs>(name);
}

class TwoTwoHistoryDetailsRouteArgs {
  const TwoTwoHistoryDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'TwoTwoHistoryDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.OneHistoryDetailsPage]
class OneHistoryDetailsRoute
    extends _i14.PageRouteInfo<OneHistoryDetailsRouteArgs> {
  OneHistoryDetailsRoute({
    _i15.Key? key,
    required String id,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          OneHistoryDetailsRoute.name,
          args: OneHistoryDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'OneHistoryDetailsRoute';

  static const _i14.PageInfo<OneHistoryDetailsRouteArgs> page =
      _i14.PageInfo<OneHistoryDetailsRouteArgs>(name);
}

class OneHistoryDetailsRouteArgs {
  const OneHistoryDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'OneHistoryDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.TwoOneHistoryDetailsPage]
class TwoOneHistoryDetailsRoute
    extends _i14.PageRouteInfo<TwoOneHistoryDetailsRouteArgs> {
  TwoOneHistoryDetailsRoute({
    _i15.Key? key,
    required String id,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TwoOneHistoryDetailsRoute.name,
          args: TwoOneHistoryDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'TwoOneHistoryDetailsRoute';

  static const _i14.PageInfo<TwoOneHistoryDetailsRouteArgs> page =
      _i14.PageInfo<TwoOneHistoryDetailsRouteArgs>(name);
}

class TwoOneHistoryDetailsRouteArgs {
  const TwoOneHistoryDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'TwoOneHistoryDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.ThreeHistoryDetailsPage]
class ThreeHistoryDetailsRoute
    extends _i14.PageRouteInfo<ThreeHistoryDetailsRouteArgs> {
  ThreeHistoryDetailsRoute({
    _i15.Key? key,
    required String id,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ThreeHistoryDetailsRoute.name,
          args: ThreeHistoryDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ThreeHistoryDetailsRoute';

  static const _i14.PageInfo<ThreeHistoryDetailsRouteArgs> page =
      _i14.PageInfo<ThreeHistoryDetailsRouteArgs>(name);
}

class ThreeHistoryDetailsRouteArgs {
  const ThreeHistoryDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i15.Key? key;

  final String id;

  @override
  String toString() {
    return 'ThreeHistoryDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.HistoryPage]
class HistoryRoute extends _i14.PageRouteInfo<void> {
  const HistoryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HistoryListPage]
class HistoryListRoute extends _i14.PageRouteInfo<void> {
  const HistoryListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HistoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FeaturePage]
class FeatureRoute extends _i14.PageRouteInfo<void> {
  const FeatureRoute({List<_i14.PageRouteInfo>? children})
      : super(
          FeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FeatureListPage]
class FeatureListRoute extends _i14.PageRouteInfo<void> {
  const FeatureListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          FeatureListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureListRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.TwoInputView]
class TwoInputView extends _i14.PageRouteInfo<void> {
  const TwoInputView({List<_i14.PageRouteInfo>? children})
      : super(
          TwoInputView.name,
          initialChildren: children,
        );

  static const String name = 'TwoInputView';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TwoFeaturePage]
class TwoFeatureRoute extends _i14.PageRouteInfo<void> {
  const TwoFeatureRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TwoFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoFeatureRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ThreeFeaturePage]
class ThreeFeatureRoute extends _i14.PageRouteInfo<void> {
  const ThreeFeatureRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ThreeFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeFeatureRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ThreeInputPage]
class ThreeInputRoute extends _i14.PageRouteInfo<void> {
  const ThreeInputRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ThreeInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeInputRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OneFeaturePage]
class OneFeatureRoute extends _i14.PageRouteInfo<void> {
  const OneFeatureRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OneFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneFeatureRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SpeedStrokesPage]
class SpeedStrokesRoute extends _i14.PageRouteInfo<void> {
  const SpeedStrokesRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SpeedStrokesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeedStrokesRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
