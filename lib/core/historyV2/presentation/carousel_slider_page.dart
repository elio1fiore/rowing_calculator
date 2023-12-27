import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/historyV2/application/paginated_feature_notifier.dart';
import 'package:row_calculator/core/historyV2/presentation/template_details_page.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';

@RoutePage(name: "CarouselSliderPage")
class CarouselSliderPage extends ConsumerStatefulWidget {
  final int id;

  const CarouselSliderPage({
    super.key,
    required this.id,
  });

  @override
  ConsumerState<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends ConsumerState<CarouselSliderPage> {
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

    return LayoutBuilder(
      builder: (context, constraints) {
        final double height = constraints.maxHeight;
        return CarouselSlider.builder(
          itemCount: state.map(
            initial: (_) => 0,
            loadInProgress: (_) => _.features.entity.length + _.itemsPerPage,
            loadFailure: (_) => _.features.entity.length + 1,
            loadSuccess: (_) => _.features.entity.length,
          ),
          options: CarouselOptions(
            height: height,
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return state.map(
              initial: (_) => const Text('initial'),
              loadFailure: (_) {
                return Text("Failure");
              },
              loadInProgress: (value) {
                return Text("Progress");
              },
              loadSuccess: (_) {
                return TemplateDetailsPage(
                  id: _.features.entity[index].id!,
                );
              },
            );
          },
        );
      },
    );
  }
}
