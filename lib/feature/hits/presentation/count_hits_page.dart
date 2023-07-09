import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountHitsPage extends ConsumerWidget {
  const CountHitsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            Text('count'),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('Press'),
              onPressed: () {
                print('count');
              },
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('canc'),
              onPressed: () {
                print('canc');
              },
            )
          ],
        ),
      ),
    ));
  }
}
