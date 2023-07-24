import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/presentation/loading.dart';
import 'package:row_calculator/feature/one_input/application/one_input_notifier.dart';
import 'package:row_calculator/feature/one_input/presentation/one_input_view.dart';
import 'package:row_calculator/feature/one_input/presentation/one_result_view.dart';
import 'package:row_calculator/feature/one_input/shared/one_input_provider.dart';

@RoutePage()
class OneFeaturePage extends ConsumerStatefulWidget {
  const OneFeaturePage({super.key});

  @override
  ConsumerState<OneFeaturePage> createState() => _OneInputPageState();
}

class _OneInputPageState extends ConsumerState<OneFeaturePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(oneFeatureNotifierProvider);
    final noty = ref.read(oneFeatureNotifierProvider.notifier);

    ref.listen<OneInputState>(
      oneInputNotifierProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {
            setState(() {});
          },
          goResult: (player) {
            setState(() {
              noty.setStateResult(player);
            });
          },
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: state.maybeWhen(
          orElse: () => Container(), //Redirect Page
          result: (player) {
            setState(() {});
            return OneResultView(player: player);
          },
          error: () => Container(), //Error Page
          input: () => const OneInputView(),
          loading: () => const LoadingPage(),
        ),
      ),
    );
  }
}


    // Map<String, String> validationMessages(FormControl<String> x) {
    //   final String valueMin = (x.value == null) ? '' : x.value!;

    //   if (noty.selectedWatt) {
    //     return {
    //       ValidationMessage.required: 'Campo richiesto',
    //       ValidationMessage.number: 'Inserire solo i numeri',
    //     };
    //   }
    //   if (noty.selectedMinute && valueMin.length < 3) {
    //     return {
    //       ValidationMessage.required: 'Campo richiesto',
    //       ValidationMessage.minLength: 'Inserire i secondi e i decimi',
    //       ValidationMessage.number: 'Inserire solo i numeri',
    //     };
    //   } else {
    //     return {
    //       ValidationMessage.required: 'Campo richiesto',
    //       ValidationMessage.minLength: 'Inserire i decimi',
    //       ValidationMessage.number: 'Inserire solo i numeri',
    //     };
    //   }
    // }