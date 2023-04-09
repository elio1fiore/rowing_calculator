import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'speed_notifier.freezed.dart';

@freezed
class SpeedState with _$SpeedState {
  const factory SpeedState.noSpeed() = _NoSpeed;
  const factory SpeedState.progressSpeed() = _ProgressSpeed;
  const factory SpeedState.dataPosition(Position position) = _DataPosition;
  const factory SpeedState.error(String error) = _Error;
}

class SpeedNotifier extends StateNotifier<SpeedState> {
  SpeedNotifier() : super(const SpeedState.noSpeed());

  Future<void> determinePosition() async {
    try {
      state = const SpeedState.progressSpeed();
      bool serviceEnabled;
      LocationPermission permission;

      // await Geolocator.openAppSettings();
      // await Geolocator.openLocationSettings();

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

      final position = await Geolocator.getCurrentPosition();

      state = SpeedState.dataPosition(position);
    } catch (e) {
      print(e.toString());
      state = SpeedState.error(e.toString());
    }
  }
}
