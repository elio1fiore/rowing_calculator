import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/domain/time_on_meters.dart';
import 'package:row_calculator/player/one_input_page_player.dart';
import 'package:row_calculator/presentation/loading_page.dart';
import 'package:row_calculator/shared/one_input/one_input_provider.dart';

class ResultOneInputPage extends ConsumerWidget {
  ResultOneInputPage({super.key});

  List<TimeOnMeters> listTimeOnMeters = [
    TimeOnMeters(
      intervalTime: IntervalTime(minutes: 3, seconds: 5),
      meters: 500,
    ),
    TimeOnMeters(
      intervalTime: IntervalTime(minutes: 3, seconds: 5),
      meters: 500,
    ),
    TimeOnMeters(
      intervalTime: IntervalTime(minutes: 3, seconds: 5),
      meters: 500,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(oneInputNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: state.maybeWhen(
        orElse: () => const Text('Qualcosa è andato storto'),
        calculateInProgress: () {
          return const LoadingPage();
        },
        resultPage: (player) {
          return _ResultOneInputPagep(
            player: player,
          );
        },
      ),
    );
  }
}

class _ResultOneInputPagep extends ConsumerWidget {
  _ResultOneInputPagep({
    Key? key,
    required this.player,
  }) : super(key: key);

  OneInputPagePlayer player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noty = ref.read(oneInputNotifierProvider.notifier);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      child: const Text('Time on meters'),
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text('Nuovo Calcolo'),
                ),
                onPressed: (() => noty.goAndResetInputPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
