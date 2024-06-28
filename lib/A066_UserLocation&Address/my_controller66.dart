
import 'dart:async';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class MyController66 extends GetxController {
  var latitude = "Getting Latitude..".obs;
  var longitude = "Getting Longitude..".obs;
  var address = "Getting Address..".obs;
  late StreamSubscription<Position> streamSubscription;

  @override
  void onInit() {
    super.onInit();
    getLocation();
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    streamSubscription.cancel();
  }

  getLocation() async{
    bool serviceEnabled;
    LocationPermission permission;
    ///Test if Location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      ///Location service are not enabled don't continue accessing the position and request users
      ///of the App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied) {
        ///Permission are denied next time you could try requesting permission again (this is also
        ///where Android's shouldShowRequestPermissionRationale return true). According to android
        ///guidelines your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      ///Permission are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permission.');
    }
    ///When we reach here, permissions are granted and we can continue accessing the position of the device.
    streamSubscription = Geolocator.getPositionStream().listen((Position position) {
      latitude.value = 'Latitude : ${position.latitude}';
      longitude.value = 'Longitude : ${position.longitude}';
      getAddressFromLatLong(position);
    });
  }

  Future<void> getAddressFromLatLong(Position position) async{
    List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    address.value = 'Address : ${place.locality}, ${place.country}';
  }

}