import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:row_calculator/feature/speed/provider/speed_provider.dart';

class SpeedTestPage extends ConsumerWidget {
  const SpeedTestPage({super.key});

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(speedProvider);
    final noty = ref.read(speedProvider.notifier);
    final med = ref.watch(medProvider);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            const Text('Speed 500/min'),
            state.maybeWhen(
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
            state.maybeWhen(
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
            state.maybeWhen(
              orElse: () => const Text('Or Else'),
              dataPosition: (__, _) => const Text('dataPos'),
              error: (error) => const Text('error'),
              noSpeed: () => const Text('init'),
              progressSpeed: () => const Text('caricamento'),
              stop: () => const Text('canc'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('get Pos'),
              onPressed: () {
                noty.init();
              },
            ),
            ElevatedButton(
              child: const Text('Canc'),
              onPressed: () {
                noty.canc();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
