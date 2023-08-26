import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:row_calculator/core/domain/interval_time.dart';

part 'speed_notifier.freezed.dart';

@freezed
class SpeedState with _$SpeedState {
  const factory SpeedState.init() = _Init;
  const factory SpeedState.noSpeed() = _NoSpeed;

  const factory SpeedState.dataPosition(
    Position position,
    IntervalTime intervalTime,
  ) = _DataPosition;
  const factory SpeedState.error(String error) = _Error;
}

class SpeedNotifier extends StateNotifier<SpeedState> {
  SpeedNotifier() : super(const SpeedState.init());

  late StreamSubscription<Position> positionStream;

  @override
  void dispose() {
    positionStream.cancel();
    state = const SpeedState.init();
    super.dispose();
  }

  void dataPosition() async {
    print("1");
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      state = const SpeedState.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        state = const SpeedState.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      state = const SpeedState.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.whileInUse) {
      print("2");

      positionStream = Geolocator.getPositionStream(
        locationSettings: AndroidSettings(
          intervalDuration: const Duration(milliseconds: 500),
          accuracy: LocationAccuracy.bestForNavigation,
          distanceFilter: 10,
        ),
      ).listen(
        (Position position) {
          print("3");

          const dist = 500;

          if (position.speed.isFinite &&
              !position.speed.isNaN &&
              position.speed != 0.0) {
            final seconds = dist ~/ (position.speed);
            // print('if ${position.speed}');
            print("if");

            final it = IntervalTime(seconds: seconds);

            state = SpeedState.dataPosition(
              position,
              it,
            );
          } else {
            print("else");

            state = const SpeedState.noSpeed();
          }
        },
      );
    }
  }
}
