import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cronometro Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Cronometro Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stopwatch watch = Stopwatch();
  Timer? timer;
  bool startStop = true;
  String elapsedTime = '';

  updateTime(Timer timer) {
    if (watch.isRunning) {
      setState(() {
        elapsedTime = transformMilliSeconds(watch.elapsedMilliseconds);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: <Widget>[
        Center(
          child: Text(
            elapsedTime,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onLongPress: () {
                resetWatch();
              },
              onPressed: () {
                if (startStop) {
                  startWatch();
                } else {
                  stopWatch();
                }
              },
              child: Icon(
                startStop ? Icons.play_arrow : Icons.stop,
              ),
            ),
          ],
        ),
      ]),
    );
  }

  startWatch() {
    watch.start();
    timer = Timer.periodic(Duration(milliseconds: 100), updateTime);
    setState(() {
      startStop = false;
    });
  }

  stopWatch() {
    watch.stop();
    timer?.cancel();
    setTime();
    setState(() {
      startStop = true;
    });
  }

  setTime() {
    var timeSoFar = watch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr:$hundredsStr";
  }

  void resetWatch() {
    watch.reset();
    setTime();
  }
}
