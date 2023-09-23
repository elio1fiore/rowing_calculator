import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:row_calculator/core/historyV2/domain/feature.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/router/app_router.gr.dart';

class FeatureTile extends ConsumerWidget {
  final Feature feature;
  const FeatureTile({super.key, required this.feature});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    DateTime dateFeature = feature.dateTime;
    String formattedDate = DateFormat('kk:mm - dd-MM-yy').format(dateFeature);

    return ListTile(
      dense: true,
      title: Text(
        feature.title,
      ),
      subtitle: Text(formattedDate),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Text(feature.id.toString()),
      ),
      onTap: () {
        appRouter.push(
          TemplateDetailsPage(
            id: feature.id!,
          ),
        );
      },
    );
  }
}
