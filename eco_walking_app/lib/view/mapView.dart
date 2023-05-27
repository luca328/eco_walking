import 'dart:collection';
import 'package:eco_walking_app/ecowalkingapp.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late dynamic appState;
  late LatLng currentLocation = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    double latitude = position.latitude;
    double longitude = position.longitude;

    setState(() {
      currentLocation = LatLng(latitude, longitude); // Mettez à jour currentLocation
    });
  }

  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();
    return Scaffold(
      body: SizedBox(
        child: FlutterMap(
          options: MapOptions(
            center: currentLocation, // Utilisez currentLocation ici
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(45.8991, 6.1295),
                  width: 25,
                  height: 35,
                  builder: (context) =>
                      Image.asset('lib/assets/images/icons/Marker.png'),
                ),
                Marker(
                  point: LatLng(45.9091, 6.1395),
                  width: 25,
                  height: 35,
                  builder: (context) =>
                      Image.asset('lib/assets/images/icons/Marker2.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
