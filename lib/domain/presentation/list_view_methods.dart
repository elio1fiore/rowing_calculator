import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/calc/domain/functionality.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/shared/router_provider.dart';

class ListViewMethods extends ConsumerWidget {
  const ListViewMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    final List<Functionality> funcs = [
      Functionality(
        navigatorPath: NavigatorPath.oneInputPage,
        nameFunctionality: '1   Input',
        subtitle: 'Calcola la media, i watt e il tempo sulle distanze',
      ),
      Functionality(
        navigatorPath: NavigatorPath.twoInputPage,
        nameFunctionality: '2   Input',
        subtitle: 'Calcola la media, i metri, i watt e le varie percentuali',
      ),
      Functionality(
        nameFunctionality: '3   Input',
        subtitle: 'Calcola il dispendio, il tempo, i watt e la media',
        navigatorPath: NavigatorPath.threeInputPage,
      ),
      Functionality(
        nameFunctionality: 'Speed',
        subtitle: 'Calcola Velocità',
        navigatorPath: NavigatorPath.speedPageTest,
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView.builder(
          itemCount: funcs.length,
          itemBuilder: ((context, index) {
            final func = funcs[index];

            return ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              onTap: () {
                appRouter.pushNamed(func.navigatorPath);
              },
              subtitle: Text(
                func.subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              title: Text(func.nameFunctionality,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              trailing: Icon(Icons.arrow_right),
              autofocus: false,
            );
          }),
        )),
      ),
    );
  }
}
