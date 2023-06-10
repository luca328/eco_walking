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
  const MapView({Key? key}) : super(key: key);
  @override
  MapViewState createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  
    LatLng currentLocation = LatLng(45.8991, 6.1295);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         FlutterMap(
          options: MapOptions(
            center: currentLocation, // Utilisez currentLocation ici
            zoom: 13.0,
          ),
          children: [
            //propiété de la carte
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            //propriété des markers
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(45.9000, 6.1195),
                  width: 25,
                  height: 35,
                  builder: (context) =>
                      Image.asset('lib/assets/images/Marker.png'),
                ),
                Marker(
                  point: LatLng(45.9091, 6.1395),
                  width: 25,
                  height: 35,
                  builder: (context) =>
                      Image.asset('lib/assets/images/Marker2.png'),
                ),
                Marker(
                  point: LatLng(45.9091, 6.1195),
                  width: 25,
                  height: 35,
                  builder: (context) =>
                      Image.asset('lib/assets/images/Marker.png'),
                ),
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}