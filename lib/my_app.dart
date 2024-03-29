import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/shared/theme_provider.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/router/app_router.gr.dart';

class RowCalculatorApp extends ConsumerWidget {
  final bool? isDarkTheme;
  const RowCalculatorApp({
    super.key,
    this.isDarkTheme,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkTheme = ref.watch(themeProviderNotifier);

    return MaterialApp.router(
      theme: FlexThemeData.light(
        scheme: FlexScheme.blue,
        surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
        blendLevel: 40,
        appBarStyle: FlexAppBarStyle.custom,
        appBarElevation: 20.0,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
          tintedDisabledControls: false,
          inputDecoratorRadius: 10.0,
          inputDecoratorUnfocusedBorderIsColored: false,
          inputDecoratorBorderWidth: 0.5,
          inputDecoratorFocusedBorderWidth: 1.0,
          tooltipRadius: 4,
          tooltipSchemeColor: SchemeColor.inverseSurface,
          tooltipOpacity: 0.9,
          snackBarElevation: 6,
          snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
          appBarScrolledUnderElevation: 6.5,
          drawerRadius: 7.0,
          drawerElevation: 19.0,
          drawerIndicatorWidth: 251.0,
          drawerIndicatorRadius: 13.0,
          drawerIndicatorOpacity: 0.0,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onTertiary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.surface,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onTertiary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.surface,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.surfaceTint,
          bottomNavigationBarElevation: 17.0,
          bottomNavigationBarShowUnselectedLabels: false,
          navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
          navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
          navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
          navigationBarIndicatorOpacity: 1.00,
          navigationBarBackgroundSchemeColor: SchemeColor.onPrimaryContainer,
          navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
          navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
          navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
          navigationRailIndicatorOpacity: 1.00,
          navigationRailBackgroundSchemeColor: SchemeColor.surface,
          navigationRailLabelType: NavigationRailLabelType.none,
        ),
        keyColors: const FlexKeyColors(),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blue,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
          tintedDisabledControls: false,
          inputDecoratorRadius: 10.0,
          inputDecoratorUnfocusedBorderIsColored: false,
          inputDecoratorBorderWidth: 0.5,
          inputDecoratorFocusedBorderWidth: 1.0,
          tooltipRadius: 4,
          tooltipSchemeColor: SchemeColor.inverseSurface,
          tooltipOpacity: 0.9,
          snackBarElevation: 6,
          snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
          drawerRadius: 7.0,
          drawerElevation: 19.0,
          drawerIndicatorWidth: 251.0,
          drawerIndicatorRadius: 13.0,
          drawerIndicatorOpacity: 0.0,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onTertiary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.surface,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onTertiary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.surface,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.surfaceTint,
          bottomNavigationBarElevation: 17.0,
          bottomNavigationBarShowUnselectedLabels: false,
          navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
          navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
          navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
          navigationBarIndicatorOpacity: 1.00,
          navigationBarBackgroundSchemeColor: SchemeColor.onPrimaryContainer,
          navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
          navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
          navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
          navigationRailIndicatorOpacity: 1.00,
          navigationRailBackgroundSchemeColor: SchemeColor.surface,
          navigationRailLabelType: NavigationRailLabelType.none,
        ),
        keyColors: const FlexKeyColors(),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      title: 'Row Calculator',
      debugShowCheckedModeBanner: false,
      themeMode: isDarkTheme ? ThemeMode.light : ThemeMode.dark,
      routerConfig: appRouter.config(
        deepLinkBuilder: (deepLink) {
          return const DeepLink(
            [
              HomeRoute(),
            ],
          );
        },
      ),
    );
  }
}
