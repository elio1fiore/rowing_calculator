import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      itemBuilder: (context, index) {
        return Card(
          child: Text('Hello'),
        );
      },
    );
  }
}
