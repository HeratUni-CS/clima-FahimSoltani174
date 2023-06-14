
import 'package:geolocator/geolocator.dart';


// The Location working with api asynchornosly
class Location {
  double? latitude, longitude;
  
  Future<void> getCurrentLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
  }
}