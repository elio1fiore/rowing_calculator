import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:row_calculator/core/historyV2/repository/feature_entity.dart';
import 'package:row_calculator/core/shared/database_feature_provider.dart';
import 'package:row_calculator/router/app_router.gr.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class HistoryListPage extends ConsumerStatefulWidget {
  const HistoryListPage({super.key});

  @override
  ConsumerState<HistoryListPage> createState() => _HistoryListPageState();
}

class _HistoryListPageState extends ConsumerState<HistoryListPage> {
  Future<List<FeatureEntity>> refreshFeature() async {
    List<FeatureEntity> features =
        await ref.read(featuresDatabaseProvider).getFeaturePaginated(1, 10);

    return features;
  }

  String getTitle(FeatureEntity item) {
    if (item.title.contains("TwoOne")) {
      return "Two Input";
    } else if (item.title.contains("TwoTwo")) {
      return "Two Input";
    } else if (item.title.contains("One")) {
      return "One Input";
    } else {
      return "Three Input";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: refreshFeature(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.data!.isEmpty) {
          return const Text("Calcola qualcosa");
        } else if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];

              return ListTile(
                onTap: () {
                  if (item.title.contains('One')) {
                    AutoRouter.of(context).push(
                      OneHistoryDetailsRoute(id: item.id.toString()),
                    );
                  } else if (item.title.contains("TwoOne")) {
                    AutoRouter.of(context).push(
                      TwoOneHistoryDetailsRoute(id: item.id.toString()),
                    );
                  } else if (item.title.contains("TwoTwo")) {
                    AutoRouter.of(context).push(
                      TwoTwoHistoryDetailsRoute(id: item.id.toString()),
                    );
                  } else if (item.title.contains("Three")) {
                    AutoRouter.of(context).push(
                      ThreeHistoryDetailsRoute(id: item.id.toString()),
                    );
                  }
                },
                trailing: IconButton(
                  icon: const Icon(Icons.delete_sharp),
                  onPressed: () {
                    if (item.id != null) {
                      ref.read(featuresDatabaseProvider).delete(item.id!);
                      refreshFeature();
                      setState(() {});
                    }
                  },
                ),
                title: Text(getTitle(item)),
                subtitle: Text(
                  item.dateTime.toString(),
                ),
              );
            },
          );
        } else {
          return const Text("Un attimo");
        }
      },
    );
  }
}
