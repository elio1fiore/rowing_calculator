import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:row_calculator/domain/speed_failure.dart';

class RealtimeSpeed {
  Stream<Either<SpeedFailure, Position>> watchPosition() async* {
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    Geolocator.getPositionStream(locationSettings: locationSettings).map(
      (Position? position) {
        if (position == null) {
          return left(const SpeedFailure.isNull());
        }

        return right(position);
      },
    );
  }
}


// StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen(
//     (Position? position) {
//         print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
//     });