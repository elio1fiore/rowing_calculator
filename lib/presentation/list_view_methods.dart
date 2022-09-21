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

    return ListView.builder(
      itemCount: functionality.length,
      itemBuilder: (context, index) {
        final func = functionality[index];

        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: func.color,
            ),
            title: Text(func.name),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => appRouter.pushNamed(func.navigatorPath),
          ),
        );
      },
    );
  }
}
