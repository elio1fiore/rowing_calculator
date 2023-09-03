import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/core/domain/feature_entity.dart';
import 'package:row_calculator/feature/core/shared/database_feature_provider.dart';
import 'package:row_calculator/feature/one_input/domain/one_input_page_player.dart';
import 'package:row_calculator/feature/one_input/shared/one_input_provider.dart';

class OneResultView extends ConsumerWidget {
  const OneResultView({
    super.key,
    required this.player,
  });

  final OneInputPagePlayer player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featureNotyRead = ref.read(oneFeatureNotifierProvider.notifier);
    final inputNotyRead = ref.read(oneInputNotifierProvider.notifier);
    final db = ref.read(featuresDatabaseProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              borderOnForeground: false,
              color: Colors.green.shade100,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.green.shade700,
                  width: 1.5,
                ),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Watt',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text('${player.watt.toInt()}'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 370,
              ),
              child: Card(
                elevation: 1.5,
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green.shade700,
                    width: 1.5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      color: Colors.green.shade100,
                      child: const Center(
                        child: Text(
                          "Time on meters",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.green.shade700,
                      height: 0,
                    ),
                    Flexible(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: player.listTimeOnMeters.length,
                        itemBuilder: (context, index) {
                          final timeOnMeters = player.listTimeOnMeters[index];

                          return Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.green.shade700, width: 1),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // ignore: unnecessary_string_interpolations
                                    Text('${timeOnMeters.metersAndUnit}'),
                                    // ignore: unnecessary_string_interpolations
                                    Text('${timeOnMeters.durationMask}'),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () async {
                  final fe = FeatureEntity(
                    dateTime: DateTime.now(),
                    description: "",
                    isImportant: false,
                    player: player.toJson(),
                    title: "One",
                  );
                  await db.create(fe);
                  inputNotyRead.resetValueForm();
                  featureNotyRead.setStateInput();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text('Nuovo Calcolo'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
