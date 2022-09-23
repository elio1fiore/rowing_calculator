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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Watt',
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text('hello'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 400,
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
                          child: Text('prova'),
                          color: Colors.green.shade100,
                        ),
                        Divider(
                          color: Colors.green.shade700,
                          height: 0,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: listTimeOnMeters.length,
                          itemBuilder: (context, index) {
                            final timeOnMeters = listTimeOnMeters[index];

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
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: ElevatedButton(
                    child: Text('Nuovo Calcolo'),
                    onPressed: () {},
                  ),
                )
              ],
            )),
      ),
    );
  }
}
