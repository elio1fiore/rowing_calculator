import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/presentation/paginated_feature_list.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';

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
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        ref
            .read(paginatedFeatureNotifierProvider.notifier)
            .getNextFeaturePage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaginatedFeatureList(),
    );
  }
}
