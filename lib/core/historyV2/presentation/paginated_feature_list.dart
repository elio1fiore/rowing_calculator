import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/application/paginated_feature_notifier.dart';
import 'package:row_calculator/core/historyV2/presentation/feature_tile.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/core/presentation/no_result_display.dart';

class PaginatedFeatureList extends ConsumerStatefulWidget {
  const PaginatedFeatureList({super.key});

  @override
  ConsumerState<PaginatedFeatureList> createState() =>
      _PaginatedFeatureListState();
}

class _PaginatedFeatureListState extends ConsumerState<PaginatedFeatureList> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    ref.listen<PaginatedFeatureState>(
      listPaginatedFeatureNotifierProvider,
      (previous, next) => next.map(
        initial: (value) => canLoadNextPage = true,
        loadFailure: (_) => canLoadNextPage = false,
        loadInProgress: (_) => canLoadNextPage = false,
        loadSuccess: (_) {
          if (!_.features.isFresh && !hasAlreadyShownNoConnectionToast) {
            //Show dialog
          }
          return canLoadNextPage = _.hasNextPage;
        },
      ),
    );

    final state = ref.watch(listPaginatedFeatureNotifierProvider);
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final matrix = notification.metrics;
        final limit = matrix.maxScrollExtent - (matrix.viewportDimension / 3);
        if (canLoadNextPage && matrix.pixels >= limit) {
          canLoadNextPage = false;
          ref
              .read(listPaginatedFeatureNotifierProvider.notifier)
              .getNextFeaturePage();
        }
        return false;
      },
      child: state.maybeWhen<bool>(
        loadSuccess: (repos, _) => repos.entity.isEmpty,
        orElse: () => false,
      )
          ? const NoResultsDisplay("Non abbiamo trovato nulla nel db")
          : _PaginatedListView(
              state: state,
            ),
    );
  }
}

class _PaginatedListView extends ConsumerWidget {
  const _PaginatedListView({
    super.key,
    required this.state,
  });

  final PaginatedFeatureState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 20,
        );
      },
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.features.entity.length + _.itemsPerPage,
        loadFailure: (_) => _.features.entity.length + 1,
        loadSuccess: (_) => _.features.entity.length,
      ),
      itemBuilder: (ctx, index) {
        return state.map(
          initial: (_) => const Text('initial'),
          loadInProgress: (_) {
            if (index < _.features.entity.length) {
              return FeatureTile(
                feature: _.features.entity[index],
              );
            }
            return const Text("Loading");
          },
          loadFailure: (_) {
            if (index < _.features.entity.length) {
              return FeatureTile(
                feature: _.features.entity[index],
              );
            }
            return const Text("Failure");
          },
          loadSuccess: (_) {
            return FeatureTile(
              feature: _.features.entity[index],
            );
          },
        );
      },
    );
  }
}
