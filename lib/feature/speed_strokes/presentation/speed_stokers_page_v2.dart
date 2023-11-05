import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/feature/speed_strokes/presentation/button_stokers.dart';
import 'package:row_calculator/feature/speed_strokes/provider/speed_provider.dart';

@RoutePage()
class SpeedStokersPageV2 extends ConsumerStatefulWidget {
  const SpeedStokersPageV2({super.key});

  @override
  ConsumerState<SpeedStokersPageV2> createState() => _SpeedStokersPageV2State();
}

class _SpeedStokersPageV2State extends ConsumerState<SpeedStokersPageV2> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref.read(speedProvider.notifier).dataPosition();
      },
    );
  }

  String printDuration(IntervalTime it) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(it.duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(it.duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    final speedState = ref.watch(speedProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  SpeedometerCard(
                    title: "Media 500 istantanea",
                    sub: "t/500",
                    stateSpeed: speedState.maybeWhen(
                      orElse: () => const Text(
                        'N/A',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      dataPosition: (position, intervalTime, _, __) {
                        return Text(
                          printDuration(intervalTime),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                  //
                  SpeedometerCard(
                    title: "Velocità istantanea",
                    sub: "Km/h",
                    stateSpeed: speedState.maybeWhen(
                      orElse: () => const Text(
                        '0',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      dataPosition: (position, intervalTime, _, __) {
                        return Text(
                          position.toStringAsFixed(2),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                  SpeedometerCard(
                    title: "Media/500",
                    sub: "t/500",
                    stateSpeed: speedState.maybeWhen(
                      orElse: () => const Text(
                        'N/A',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      dataPosition: (_, __, velMed, intMed) {
                        return Text(
                          printDuration(intMed),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                  SpeedometerCard(
                    title: "Velocità media",
                    sub: "Km/h",
                    stateSpeed: speedState.maybeWhen(
                      orElse: () => const Text(
                        '0',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      dataPosition: (_, __, velMed, intMed) {
                        return Text(
                          velMed.toStringAsFixed(2),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 2,
            ),
            const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ButtonStokers(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SpeedometerCard extends StatelessWidget {
  final Widget stateSpeed;
  final double unitFontSize;
  final double speedFontSize;
  final String title;
  final sub;

  const SpeedometerCard({
    super.key,
    required this.stateSpeed,
    required this.title,
    required this.sub,
    this.unitFontSize = 14,
    this.speedFontSize = 36,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            // Velocità
            stateSpeed,

            // Unità di misura
            Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                sub,
                style: TextStyle(fontSize: unitFontSize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
