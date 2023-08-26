import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/speed_strokes/provider/speed_provider.dart';
import 'package:row_calculator/feature/speed_strokes/provider/stokers_provider.dart';

@RoutePage()
class SpeedStrokesPage extends ConsumerStatefulWidget {
  const SpeedStrokesPage({super.key});

  @override
  ConsumerState<SpeedStrokesPage> createState() => _SpeedStrokesPageState();
}

class _SpeedStrokesPageState extends ConsumerState<SpeedStrokesPage> {
  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        print("Chiama");
        ref.read(speedProvider.notifier).dataPosition();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final stokerState = ref.watch(stokersNotifierProvider);
    final stokerNoty = ref.read(stokersNotifierProvider.notifier);
    final stokerNotyWatch = ref.watch(stokersNotifierProvider.notifier);

    final speedState = ref.watch(speedProvider);
    final speedNoty = ref.read(speedProvider.notifier);

    final med = ref.watch(medProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                const Text('Speed 500/min'),
                speedState.maybeWhen(
                  orElse: () => const Text('0'),
                  dataPosition: (position, intervalTime) {
                    return Row(
                      children: [Text(_printDuration(intervalTime))],
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                speedState.maybeWhen(
                  orElse: () => const Text('0'),
                  dataPosition: (position, _) {
                    return Column(
                      children: [
                        Text('long: ${position.longitude}'),
                        Text('lat: ${position.latitude}'),
                        Text('+-: ${position.speedAccuracy}'),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Media'),
                Text(_printDuration(med)),
                const SizedBox(
                  height: 20,
                ),
                speedState.maybeWhen(
                  orElse: () => const Text('Or Else'),
                  dataPosition: (__, _) => const Text('dataPos'),
                  init: () => Text("init"),
                  error: (error) => const Text('error'),
                  noSpeed: () => const Text("No speed"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            StreamBuilder<double>(
              stream: stokerNotyWatch.streamController,
              builder: (context, snapshot) {
                return stokerState.maybeWhen(
                  orElse: () => Text('NA'),
                  multipleTap: () => Text(
                    'Numero di volte premuto: ${snapshot.data}',
                    style: TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            stokerState.maybeWhen(
              orElse: () => Container(),
              init: () => ElevatedButton(
                child: Text("Init"),
                onPressed: () {
                  stokerNoty.goFirst();
                },
              ),
              first: () => ElevatedButton(
                child: Text("Un altro colpo please"),
                onPressed: () {
                  stokerNoty.goMultipleTap();
                },
              ),
              multipleTap: () => ElevatedButton(
                child: const Text("Continue"),
                onPressed: () {
                  stokerNoty.goMultipleTap();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
