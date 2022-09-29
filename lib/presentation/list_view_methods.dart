import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/domain/functionality.dart';
import 'package:row_calculator/function/functions.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/shared/router_provider.dart';

class ListViewMethods extends ConsumerWidget {
  ListViewMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    final List<Functionality> funcs = [
      Functionality(
        navigatorPath: NavigatorPath.oneInputPage,
        numberInput: '1',
        subtitle: 'Calcola la media, i watt e il tempo sulle distanze',
      ),
      Functionality(
        navigatorPath: NavigatorPath.twoInputPage,
        numberInput: '2',
        subtitle: 'Calcola la media, i metri, i watt e le varie percentuali',
      ),
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
              leading: Text(func.numberInput),
              onTap: () {
                appRouter.pushNamed(func.navigatorPath);
              },
              subtitle: Text(
                func.subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              title: Text('Input'),
              trailing: Icon(Icons.arrow_right),
              autofocus: false,
            );
          }),
        )),
      ),
    );
  }
}
