import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:row_calculator/core/domain/interval_time.dart';

part 'speed_notifier.freezed.dart';

@freezed
class SpeedState with _$SpeedState {
  const factory SpeedState.stop() = _Stop;
  const factory SpeedState.noSpeed() = _NoSpeed;
  const factory SpeedState.progressSpeed() = _ProgressSpeed;
  const factory SpeedState.dataPosition(
    Position position,
    IntervalTime intervalTime,
  ) = _DataPosition;
  const factory SpeedState.error(String error) = _Error;
}

class SpeedNotifier extends StateNotifier<SpeedState> {
  late int secondFirst;
  SpeedNotifier() : super(const SpeedState.noSpeed());

  late StreamSubscription<Position> positionStream;

  void canc() {
    positionStream.cancel();
    state = const SpeedState.stop();
  }

  void init() async {
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
      positionStream = Geolocator.getPositionStream(
          locationSettings: AndroidSettings(
        intervalDuration: const Duration(milliseconds: 500),
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 10,
      )).listen((Position position) {
        const dist = 500;
        final seconds = dist ~/ (position.speed);

        final it = IntervalTime(seconds: seconds);

        state = SpeedState.dataPosition(position, it);
      });
    }
  }
}
