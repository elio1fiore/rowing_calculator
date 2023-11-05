import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:row_calculator/core/domain/interval_time.dart';

part 'speed_notifier.freezed.dart';

//Lato dx da km/h a m/s

@freezed
class SpeedState with _$SpeedState {
  const factory SpeedState.init() = _Init;
  const factory SpeedState.noSpeed() = _NoSpeed;

  const factory SpeedState.dataPosition(
    double velocita,
    IntervalTime intervalTime,
    double velocitaMedia,
    IntervalTime intervalloMedio,
  ) = _DataPosition;
  const factory SpeedState.error(String error) = _Error;
}

class SpeedNotifier extends StateNotifier<SpeedState> {
  SpeedNotifier() : super(const SpeedState.init());
  List<double> speedReadings = [];
  List<int> intervalloMedioList = [];

  static const dist = 500;

  late StreamSubscription<Position> positionStream;

  @override
  void dispose() {
    positionStream.cancel();
    state = const SpeedState.init();
    super.dispose();
  }

  void dataPosition() async {
    try {
      final permission = await _checkAndRequestPermission();

      if (permission == LocationPermission.whileInUse) {
        _startListeningToPositionChanges();
      }
    } catch (e) {
      state = SpeedState.error(e.toString());
    }
  }

  Future<LocationPermission> _checkAndRequestPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return permission;
  }

  void _startListeningToPositionChanges() {
    positionStream = Geolocator.getPositionStream(
      locationSettings: AndroidSettings(
        intervalDuration: const Duration(milliseconds: 500),
        accuracy: LocationAccuracy.bestForNavigation,
      ),
    ).listen((Position position) {
      if (position.speed.isFinite &&
          !position.speed.isNaN &&
          position.speed > 1) {
        speedReadings.add(position.speed);
        if (speedReadings.length > 60) {
          speedReadings.removeAt(0);
        }

        final averageSpeed =
            speedReadings.reduce((a, b) => a + b) / speedReadings.length;

        final seconds = dist ~/ (position.speed);
        final it = IntervalTime(seconds: seconds);

        intervalloMedioList.add(it.duration.inSeconds);

        if (intervalloMedioList.length > 60) {
          intervalloMedioList.removeAt(0);
        }

        final intIntervalloMedio =
            intervalloMedioList.reduce((a, b) => a + b) ~/
                intervalloMedioList.length;

        final intMedio = IntervalTime(seconds: intIntervalloMedio);

        state = SpeedState.dataPosition(
          position.speed * 3.6,
          it,
          averageSpeed * 3.6,
          intMedio,
        );
      } else {
        state = const SpeedState.noSpeed();
      }
    }, onError: (error) {
      // Gestisci l'errore
      state = SpeedState.error(error.toString());
    });
  }
}
