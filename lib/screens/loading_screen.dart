import 'package:flutter/material.dart';
import 'package:weather_app/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    var location = Location();
    await location.getCurrentLocation();
    var longitude = location.longitude;
    var latitude = location.latitude;
    print("Lat: $latitude Long: $longitude");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Text('Get Location'),
      )),
    );
  }
}
