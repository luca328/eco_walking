// import 'package:eco_walking_app/assets/colors/colors.dart';
// import 'package:eco_walking_app/assets/fonts/font.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_latlong/flutter_latlong.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:location/location.dart';

// class TestView extends StatefulWidget {
//   final double width;
//   final double height;
//   final double fem = 2;

//   const TestView({
//     Key? key,
//     this.width = 0,
//     this.height = 0,
//   }) : super(key: key);

//   @override
//   _TestViewState createState() => _TestViewState();
// }

// class _TestViewState extends State<TestView> {
//   LocationData? _currentLocation;
//   Location location = Location();

//   @override
//   void initState() {
//     super.initState();
//     location.onLocationChanged.listen((LocationData currentLocation) {
//       setState(() {
//         _currentLocation = currentLocation;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Carte OpenStreetMap'),
//       ),
//       body: FlutterMap(
//         options: MapOptions(
//           center: _currentLocation != null
//               ? LatLng(_currentLocation!.latitude, _currentLocation!.longitude)
//               : LatLng(48.85341, 2.3488),
//           zoom: 13.0,
//         ),
//         layers: [
//           TileLayerOptions(
//             urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//             subdomains: ['a', 'b', 'c'],
//           ),
//           MarkerLayerOptions(
//             markers: _currentLocation != null
//                 ? [
//                     Marker(
//                       width: 80.0,
//                       height: 80.0,
//                       point:
//                         LatLng(_currentLocation!.latitude, _currentLocation!.longitude),
//                       builder: (ctx) => Icon(Icons.location_on, color: Colors.red),
//                     ),
//                   ]
//                 : [],
//           ),
//         ],
//       ),
//     );
//   }
// }

    
    
    
    
    
    
    
    
//     /*Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         border: Border.all(color: CustomColors.lightGreen),
//         color: CustomColors.lightGreen,
//         borderRadius: BorderRadius.circular(45 * fem),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             left: 0 * fem,
//             top: 0 * fem,
//             child: Container(
//               padding: EdgeInsets.fromLTRB(47 * fem, 472 * fem, 39 * fem, 30 * fem),
//               width: 416 * fem,
//               height: 841 * fem,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 /*image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: NetworkImage(
//                     '[Image url]',
//                   ),
//                 ),*/
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(170 * fem, 0 * fem, 141 * fem, 182 * fem),
//                     width: double.infinity,
//                     height: 19 * fem,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(9.5 * fem),
//                       color: CustomColors.lightGreen,
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.fromLTRB(54.5 * fem, 30 * fem, 54.5 * fem, 30 * fem),
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: CustomColors.lightBlue,
//                       borderRadius: BorderRadius.circular(10 * fem),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
//                           child: Text(
//                             'Tous les participants sont présents !',
//                             textAlign: TextAlign.center,
//                             style: Customfont.title(color: CustomColors.orange, family: "Brevia")
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(30.5 * fem, 0 * fem, 30.5 * fem, 0 * fem),
//                           width: double.infinity,
//                           height: 40 * fem,
//                           decoration: BoxDecoration(
//                             color: CustomColors.lightGreen,
//                             borderRadius: BorderRadius.circular(27 * fem),
//                           ),
//                           child: Center(
//                             child: Center(
//                               child: Text(
//                                 'Démarrer le trajet',
//                                 textAlign: TextAlign.center,
//                                 style: Customfont.title(color: CustomColors.orange, family: "Elza")
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 50 * fem,
//             top: 50 * fem,
//             child: Container(
//               width:  336 * fem,
//               height:  37 * fem,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 28 * fem, 0 * fem),
//                     width: 54 * fem,
//                     height: 23 * fem,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(24 * fem),
//                     ),
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(12 * fem, 1 * fem, 12 * fem, 0 * fem),
//                       width: double.infinity,
//                       height: double.infinity,
//                       decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(24 * fem),
//                       ),
//                       child: Text(
//                         "9:41",
//                         textAlign: TextAlign.center,
//                         style: Customfont.title(color: CustomColors.orange, family: "Bravia")
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 5 * fem),
//                     width: 172 * fem,
//                     height: 32 * fem,
//                     /*child: Image.network(
//                       '[Map API URL]',
//                       width: 172 * fem,
//                       height: 32 * fem,
//                     ),*/
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
//                           width: 18 * fem,
//                           height: 12 * fem,
//                           /*child: Image.network(
//                             '[Image URL]',
//                             width: 18 * fem,
//                             height: 12 * fem,
//                           ),*/
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0.17 * fem),
//                           width: 17 * fem,
//                           height: 11.83 * fem,
//                           /*child: Image.network(
//                             '[Image URL]',
//                             width: 17 * fem,
//                             height: 11.83 * fem,
//                           ),*/
//                         ),
//                         Container(
//                           width: 27.4 * fem,
//                           height: 13 * fem,
//                           /*child: Image.network(
//                             '[Image URL]',
//                             width: 27.4 * fem,
//                             height: 13 * fem,
//                           ),*/
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//             Positioned(
//               left: 128 * fem,
//               top: 820 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 134 * fem,
//                   height: 5 * fem,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100 * fem),
//                       color: CustomColors.lightBlue,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 30 * fem,
//               top: 66.25 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 20 * fem,
//                   height: 17.5 * fem,
//                   /*child: Image.network(
//                     '[Image url]',
//                     width:  20*fem,
//                     height:  17.5*fem,
//                   ),*/
//                 ),
//               ),
//             ),
//         ],
//       )
//     );
//   }
// }


// // GoogleMap(
// //   initialCameraPosition: CameraPosition(
// //     target: LatLng(37.77483, -122.41942), // Coordonnées du centre de la carte
// //     zoom: 12, // Niveau de zoom initial
// //   ),
// //   markers: Set<Marker>.of([
// //     Marker(
// //       markerId: MarkerId('marker_1'), // Identifiant unique du marqueur
// //       position: LatLng(37.77483, -122.41942), // Coordonnées du marqueur
// //       infoWindow: InfoWindow(title: 'Titre du marqueur'), // Titre affiché lorsque l'utilisateur clique sur le marqueur
// //     ),
// //   ]),
// // )*/
