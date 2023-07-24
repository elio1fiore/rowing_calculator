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
    final stateTheme = ref.watch(themeProvider);

    return AutoTabsRouter.pageView(
      routes: const [
        FeatureRoute(),
        HistoryRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            actions: [
              IconButton(
                icon: stateTheme
                    ? Icon(MdiIcons.weatherNight)
                    : Icon(MdiIcons.weatherSunny),
                onPressed: () =>
                    ref.read(themeProvider.notifier).state = !stateTheme,
              )
            ],
            leading: const AutoLeadingButton(),
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
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
          ),
        );
      },
    );
  }
}
