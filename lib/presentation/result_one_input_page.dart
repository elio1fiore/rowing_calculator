import 'package:flutter/material.dart';
import 'package:row_calculator/domain/interval_time.dart';
import 'package:row_calculator/domain/time_on_meters.dart';

class ResultOneInputPage extends StatelessWidget {
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
    TimeOnMeters(
      intervalTime: IntervalTime(minutes: 3, seconds: 5),
      meters: 500,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Card(child: Text('hello')),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.amber,
                  constraints: BoxConstraints(maxHeight: 300),
                  child: Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listTimeOnMeters.length,
                      itemBuilder: (context, index) {
                        final timeOnMeters = listTimeOnMeters[index];

                        return Container(
                          child: Row(
                            children: [
                              Text('sx'),
                              Text('dx'),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
