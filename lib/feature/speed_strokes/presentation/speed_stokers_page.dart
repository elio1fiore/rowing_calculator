import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/feature/speed_strokes/presentation/button_stokers.dart';
import 'package:row_calculator/feature/speed_strokes/provider/speed_provider.dart';

class SpeedStrokesPage extends ConsumerStatefulWidget {
  const SpeedStrokesPage({super.key});

  @override
  ConsumerState<SpeedStrokesPage> createState() => _SpeedStrokesPageState();
}

class _SpeedStrokesPageState extends ConsumerState<SpeedStrokesPage> {
  String _printDuration(IntervalTime it) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(it.duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(it.duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref.read(speedProvider.notifier).dataPosition();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final speedState = ref.watch(speedProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                //speed/500 esatta della barca
                const Text("insta"),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Speed 500/min',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        speedState.maybeWhen(
                          orElse: () => const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          dataPosition: (position, intervalTime, _, __) {
                            return Text(
                              _printDuration(intervalTime),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Velocità barca esatta
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Speed',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        speedState.maybeWhen(
                          orElse: () => const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          dataPosition: (position, intervalTime, _, __) {
                            return Text(
                              _printDuration(intervalTime),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Media"),
                /////Media ultimi 15 speed/500 esatta della barca
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Speed",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        speedState.maybeWhen(
                          noSpeed: () => Text("Sei fermo"),
                          init: () => Text("0"),
                          orElse: () => const Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          error: (error) => Text("Error!"),
                          dataPosition: (_, __, vel, inter) {
                            return Column(
                              children: [
                                Text(
                                  '+-: ${vel}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Speed",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        speedState.maybeWhen(
                          noSpeed: () => Text("Sei fermo"),
                          init: () => Text("0"),
                          orElse: () => const Text(
                            '0',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          error: (error) => Text("Error!"),
                          dataPosition: (_, __, vel, inter) {
                            return Column(
                              children: [
                                Text(
                                  '+-: ${vel}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),

            //Conta Colpi
            ButtonStokers()
          ],
        ),
      ),
    );
  }
}
