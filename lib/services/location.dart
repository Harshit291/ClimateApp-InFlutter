import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Function location;
  Location({this.latitude, this.longitude, this.location});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      this.latitude = position.latitude;
      this.longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
