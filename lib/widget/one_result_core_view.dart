import 'package:flutter/material.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';

class OneResultCoreView extends StatelessWidget {
  const OneResultCoreView({
    super.key,
    required this.player,
  });

  final OneInputPlayer player;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                const Text(
                  'Watt',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    '${player.watt.toInt()}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 450,
          ),
          child: Card(
            elevation: 1.5,
            clipBehavior: Clip.antiAlias,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
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
                  height: 0,
                  color: Colors.black,
                ),
                Flexible(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      height: 0,
                      color: Colors.black,
                    ),
                    shrinkWrap: true,
                    itemCount: player.listTimeOnMeters.length,
                    itemBuilder: (context, index) {
                      final timeOnMeters = player.listTimeOnMeters[index];

                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // ignore: unnecessary_string_interpolations
                            Text(
                              '${timeOnMeters.metersAndUnit}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            // ignore: unnecessary_string_interpolations
                            Text(
                              '${timeOnMeters.durationMask}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
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
      ],
    );
  }
}
