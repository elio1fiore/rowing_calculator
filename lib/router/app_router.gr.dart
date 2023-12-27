// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/widgets.dart' as _i12;
import 'package:row_calculator/core/historyV2/presentation/carousel_slider_page.dart'
    as _i1;
import 'package:row_calculator/core/historyV2/presentation/history.dart' as _i3;
import 'package:row_calculator/core/presentation/features.dart' as _i2;
import 'package:row_calculator/core/presentation/home.dart' as _i4;
import 'package:row_calculator/feature/one_input/presentation/one_feature_page.dart'
    as _i5;
import 'package:row_calculator/feature/speed_strokes/presentation/speed_stokers_page_v2.dart'
    as _i6;
import 'package:row_calculator/feature/three_input/presentation/old/three_input_page.dart'
    as _i8;
import 'package:row_calculator/feature/three_input/presentation/three_feature_page.dart'
    as _i7;
import 'package:row_calculator/feature/two_input/presentation/old/two_input_page.dart'
    as _i10;
import 'package:row_calculator/feature/two_input/presentation/two_feature_page.dart'
    as _i9;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CarouselSliderPage.name: (routeData) {
      final args = routeData.argsAs<CarouselSliderPageArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CarouselSliderPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    FeatureListRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FeatureListPage(),
      );
    },
    FeatureRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FeaturePage(),
      );
    },
    HistoryListRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryListPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    OneFeatureRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OneFeaturePage(),
      );
    },
    SpeedStokersRouteV2.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SpeedStokersPageV2(),
      );
    },
    ThreeFeatureRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ThreeFeaturePage(),
      );
    },
    ThreeInputRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ThreeInputPage(),
      );
    },
    TwoFeatureRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TwoFeaturePage(),
      );
    },
    TwoInputView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TwoInputView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CarouselSliderPage]
class CarouselSliderPage extends _i11.PageRouteInfo<CarouselSliderPageArgs> {
  CarouselSliderPage({
    _i12.Key? key,
    required int id,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CarouselSliderPage.name,
          args: CarouselSliderPageArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CarouselSliderPage';

  static const _i11.PageInfo<CarouselSliderPageArgs> page =
      _i11.PageInfo<CarouselSliderPageArgs>(name);
}

class CarouselSliderPageArgs {
  const CarouselSliderPageArgs({
    this.key,
    required this.id,
  });

  final _i12.Key? key;

  final int id;

  @override
  String toString() {
    return 'CarouselSliderPageArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.FeatureListPage]
class FeatureListRoute extends _i11.PageRouteInfo<void> {
  const FeatureListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FeatureListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureListRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FeaturePage]
class FeatureRoute extends _i11.PageRouteInfo<void> {
  const FeatureRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeatureRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryListPage]
class HistoryListRoute extends _i11.PageRouteInfo<void> {
  const HistoryListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HistoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryListRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryPage]
class HistoryRoute extends _i11.PageRouteInfo<void> {
  const HistoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OneFeaturePage]
class OneFeatureRoute extends _i11.PageRouteInfo<void> {
  const OneFeatureRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OneFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneFeatureRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SpeedStokersPageV2]
class SpeedStokersRouteV2 extends _i11.PageRouteInfo<void> {
  const SpeedStokersRouteV2({List<_i11.PageRouteInfo>? children})
      : super(
          SpeedStokersRouteV2.name,
          initialChildren: children,
        );

  static const String name = 'SpeedStokersRouteV2';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ThreeFeaturePage]
class ThreeFeatureRoute extends _i11.PageRouteInfo<void> {
  const ThreeFeatureRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ThreeFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeFeatureRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ThreeInputPage]
class ThreeInputRoute extends _i11.PageRouteInfo<void> {
  const ThreeInputRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ThreeInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeInputRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TwoFeaturePage]
class TwoFeatureRoute extends _i11.PageRouteInfo<void> {
  const TwoFeatureRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TwoFeatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoFeatureRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TwoInputView]
class TwoInputView extends _i11.PageRouteInfo<void> {
  const TwoInputView({List<_i11.PageRouteInfo>? children})
      : super(
          TwoInputView.name,
          initialChildren: children,
        );

  static const String name = 'TwoInputView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
