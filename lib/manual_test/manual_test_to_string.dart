import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:row_calculator/core/domain/interval_time.dart';
import 'package:row_calculator/core/domain/time_on_meters.dart';
import 'package:row_calculator/feature/one_input/domain/v2/one_input_player.dart';

void main() {
  const IntervalTime it1 = IntervalTime(minutes: 1, seconds: 20);
  const IntervalTime it2 = IntervalTime(minutes: 1, seconds: 30);

  const TimeOnMeters tm1 = TimeOnMeters(intervalTime: it1, meters: 2000);
  const TimeOnMeters tm2 = TimeOnMeters(intervalTime: it2, meters: 2000);

  const OneInputPlayer one =
      OneInputPlayer(listTimeOnMeters: [tm1, tm2], media500: it1, watt: 3000);

  final jsonString = jsonEncode(one.toJson());

  runApp(MyApp(
    playerStr: jsonString,
  ));
}

class MyApp extends StatelessWidget {
  final String playerStr;

  const MyApp({
    super.key,
    required this.playerStr,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> playerMap = jsonDecode(playerStr);
    OneInputPlayer player = OneInputPlayer.fromJson(playerMap);

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(player.watt.toString()),
              for (var tm in player.listTimeOnMeters)
                Text(
                  tm.meters.toString(),
                ),
              Text(player.media500.betaValue.toString())
            ],
          ),
        ),
      ),
    );
  }
}
