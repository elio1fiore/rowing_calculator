import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/application/paginated_feature_notifier.dart';
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
      paginatedFeatureNotifierProvider,
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

    final state = ref.watch(paginatedFeatureNotifierProvider);
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final matrix = notification.metrics;
        final limit = matrix.maxScrollExtent - (matrix.viewportDimension / 3);
        if (canLoadNextPage && matrix.pixels >= limit) {
          canLoadNextPage = false;
          ref
              .read(paginatedFeatureNotifierProvider.notifier)
              .getNextFeaturePage();
        }
        return false;
      },
      child: state.maybeWhen<bool>(
        loadSuccess: (repos, _) => repos.entity.isEmpty,
        orElse: () => false,
      )
          ? const NoResultsDisplay("Non abbiamo trovato nulla nel db")
          : _PaginatedListView(state: state),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    super.key,
    required this.state,
  });

  final PaginatedFeatureState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      physics: const BouncingScrollPhysics(),
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
              return ListTile(
                  title: Text(
                _.features.entity[index].title,
              ));
            }
            return const Text("Loading");
          },
          loadFailure: (_) {
            if (index < _.features.entity.length) {
              return ListTile(
                  title: Text(
                _.features.entity[index].title,
              ));
            }
            return Text("Failure");
          },
          loadSuccess: (_) => ListTile(
            title: Text(
              _.features.entity[index].title,
            ),
          ),
        );
      },
    );
  }
}
