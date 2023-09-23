// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:row_calculator/core/shared/theme_provider.dart';
import 'package:row_calculator/router/app_router.gr.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateTheme = ref.watch(themeProviderNotifier);

    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        FeatureRoute(),
        HistoryRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        bool shouldShowBottomBar = false;

        if (tabsRouter.currentPath == "/feature" ||
            tabsRouter.currentPath == "/history") {
          shouldShowBottomBar = true;
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(getTitle(tabsRouter.currentPath)),
            actions: [
              IconButton(
                  icon: stateTheme
                      ? Icon(MdiIcons.weatherNight)
                      : Icon(MdiIcons.weatherSunny),
                  onPressed: () =>
                      ref.read(themeProviderNotifier.notifier).setTheme())
            ],
            leading: const AutoLeadingButton(),
          ),
          body: child,
          bottomNavigationBar: shouldShowBottomBar
              ? BottomNavigationBar(
                  enableFeedback: true,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: tabsRouter.setActiveIndex,
                  items: [
                    BottomNavigationBarItem(
                      label: 'Feature',
                      icon: Icon(MdiIcons.rocket),
                    ),
                    BottomNavigationBarItem(
                      label: 'History',
                      icon: Icon(MdiIcons.history),
                    ),
                  ],
                )
              : null,
        );
      },
    );
  }

  String getTitle(String path) {
    String title;

    switch (path) {
      case "/feature":
      case "/history":
        title = "Home";
        break;
      case "/feature/one":
        title = "One Input";
        break;
      case "/feature/two":
        title = "Two Input";
        break;
      case "/feature/three":
        title = "Three Input";
        break;
      case "/feature/speed-strokes":
        title = "Speed & Strokes";
        break;

      default:
        title = "Home";
    }

    return title;
  }
}
