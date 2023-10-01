import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:row_calculator/core/historyV2/application/template_details_notifier.dart';
import 'package:row_calculator/core/historyV2/shared/history_provider.dart';
import 'package:row_calculator/widget/one_result_core_view.dart';

@RoutePage(name: "TemplateDetailsPage")
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
              DateFormat('kk:mm - dd-MM-yy').format(feature.dateTime);

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [Text(feature.title), Text(formattedDate)],
                  ),
                  Card(
                    child: feature.player.maybeWhen(
                      orElse: () => const Text("Qualcosa è andato storto"),
                      one: (player) => OneResultCoreView(player: player),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      enabled: enabled,
                      controller: _controller,
                      decoration: const InputDecoration(
                          labelText: 'Inserisci un testo'),
                    ),
                  ),
                  if (!enabled) ...[
                    Row(
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
                      children: [
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
                        ElevatedButton(
                          child: const Text("Annulla"),
                          onPressed: () {
                            setState(() {
                              enabled = false;
                            });
                          },
                        )
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
