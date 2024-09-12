import 'package:geolocator/geolocator.dart';

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error("Location Services are disabled");
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location permission are denied");
    }
  }
  if (permission == LocationPermission) {
    return Future.error("Location permission is permanently denied");
  }
  return Geolocator.getCurrentPosition();
}
// 4997320548b0ab50d0f608531c23a46c
// 33377df1d8ad47259dc30103241209