import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:row_calculator/core/historyV2/application/template_details_notifier.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/widget/one_result_core_view.dart';
import 'package:row_calculator/widget/three_result_core_view.dart';
import 'package:row_calculator/widget/two_result_core_view_1.dart';
import 'package:row_calculator/widget/two_result_core_view_2.dart';

class TemplateDetailsPage extends ConsumerStatefulWidget {
  final int id;

  const TemplateDetailsPage({
    super.key,
    required this.id,
  });

  @override
  ConsumerState<TemplateDetailsPage> createState() =>
      _OneHistoryDetailsPageState();
}

class _OneHistoryDetailsPageState extends ConsumerState<TemplateDetailsPage> {
  bool changeComment = false;
  bool enabled = false;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(templateDetailsNotifierProvider.notifier).getFeature(widget.id);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateTemplate = ref.watch(templateDetailsNotifierProvider);

    ref.listen<TemplateDetailsState>(
      templateDetailsNotifierProvider,
      (previous, next) {
        next.maybeWhen(
          orElse: () => null,
          success: (feature) {
            changeComment = false;
            enabled = false;
          },
        );
      },
    );

    return Scaffold(
      body: stateTemplate.maybeWhen(
        orElse: () => const Text("Loading"),
        error: (failure) => Text(failure.error),
        success: (feature) {
          _controller.text = feature.description;
          String formattedDate =
              DateFormat('kk:mm - dd/MM/yy').format(feature.dateTime);

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Card(
                    borderOnForeground: false,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.id.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            feature.title.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedDate,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  feature.player.maybeWhen(
                    orElse: () => const Text("Qualcosa è andato storto"),
                    twoOne: (player) => TwoResultCoreView1(player1: player),
                    twoTwo: (player) => TwoResultCoreView2(player2: player),
                    one: (player) => OneResultCoreView(player: player),
                    three: (player) => ThreeResultCoreView(player: player),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    enabled: enabled,
                    controller: _controller,
                    decoration:
                        const InputDecoration(labelText: 'Inserisci commento'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (!enabled) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          child: const Text("Modifica"),
                          onPressed: () {
                            setState(() {
                              enabled = true;
                            });
                          },
                        )
                      ],
                    )
                  ] else ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          child: const Text("Annulla"),
                          onPressed: () {
                            setState(() {
                              enabled = false;
                            });
                          },
                        ),
                        ElevatedButton(
                          child: const Text("Salva"),
                          onPressed: () {
                            setState(() {
                              changeComment = true;
                            });
                            ref
                                .read(templateDetailsNotifierProvider.notifier)
                                .updateFeatureComment(
                                  widget.id,
                                  _controller.text,
                                );
                          },
                        ),
                      ],
                    )
                  ]
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
