import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/domain/feature_entity.dart';
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
  late List<FeatureEntity> features;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();

    refreshFeature();
  }

  Future refreshFeature() async {
    setState(() {
      isLoading = true;
    });

    features = await ref.read(featuresDatabaseProvider).readAllFeatures();

    setState(() {
      isLoading = false;
    });
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
    return isLoading
        ? const CircularProgressIndicator()
        : FutureBuilder(
            future: ref.read(featuresDatabaseProvider).readAllFeatures(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: features.length,
                  itemBuilder: (context, index) {
                    final item = features[index];

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
