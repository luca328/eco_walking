import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/view/challengeView.dart';
import 'package:eco_walking_app/view/mapView.dart';

class SecondView extends StatelessWidget {
  SecondView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
            width: 330,
            height: 114,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 40,
                  left: 0,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MapView()),
                        );
                      },
                      child: Container(
                        width: 330,
                        height: 74,
                        child: Stack(
                          children: [
                            Container(
                              width: 330,
                              height: 74,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(245, 245, 245, 1),
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vous êtes une Germe',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Brevia',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  'Niveau 1/5 : En cours',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(79, 79, 79, 1),
                                    fontFamily: 'Elza Text',
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.45,
                                  ),
                                ),
                                Text(
                                  '7/20',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(79, 79, 79, 1),
                                    fontFamily: 'Elza Text',
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.45,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 12,
                              left: 259,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(102, 188, 255, 1),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const SizedBox(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
        //         Positioned(
        //           top: 40,
        //           left: 0,
        //           child: Container(
        //           width: 330,
        //           height: 74,
        //     child: Stack(
        //       children: <Widget>[
        //         Positioned(
        //       top: 0,
        //       left: 0,
        //       child: Container(
        //       width: 330,
        //       height: 74,
        //       decoration: BoxDecoration(
        //         borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(10),
        //           topRight: Radius.circular(10),
        //           bottomLeft: Radius.circular(10),
        //           bottomRight: Radius.circular(10),
        //         ),
        //     border : Border.all(
        //         color: const Color.fromRGBO(189, 189, 189, 1),
        //         width: 1,
        //       ),
        // )
        //     )
        //     ),/*const Positioned(
        //       top: 36,
        //       left: 22,
        //       child: Text('Ces challenges sont éphémères et dépendent de votre localisation !', textAlign: TextAlign.left, style: TextStyle(
        //       color: Color.fromRGBO(79, 79, 79, 1),
        //       fontFamily: 'Elza Text',
        //       fontSize: 10,
        //       letterSpacing: 0,
        //       fontWeight: FontWeight.normal,
        //       height: 1.45
        //     ),)
        //     ),
        //     const Positioned(
        //       top: 10,
        //       left: 22,
        //       child: Text('Réaliser vite ces challenges', textAlign: TextAlign.left, style: TextStyle(
        //       color: Color.fromRGBO(0, 0, 0, 1),
        //       fontFamily: 'Brevia',
        //       fontSize: 14,
        //       letterSpacing: 0,
        //       fontWeight: FontWeight.normal,
        //       height: 1.5
        //     ),)
        //     ),Positioned(
        //       top: 12,
        //       left: 259,
        //       child: Container(
        //     width: 50,
        //     height: 50,
        //     child: Stack(
        //       children: <Widget>[
        //         Positioned(
        //       top: 0,
        //       left: 0,
        //       child: Container(
        //       width: 50,
        //       height: 50,
        //       decoration: BoxDecoration(
        //         border : Border.all(
        //         color: const Color.fromRGBO(102, 188, 255, 1),
        //         width: 1,
        //       ),
        //     borderRadius : const BorderRadius.all(Radius.elliptical(50, 50)),
        // )
        //     )
        //     ),
        //       ]
        //     )
        //   )
        //     ),*/
        //       ]
        //     )
        //   )
        //     ),
            const Positioned(
              top: 0,
              left: 0,
              child: Text('Challenges éphémères', textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Brevia',
              fontSize: 18,
              letterSpacing: 0 ,
              fontWeight: FontWeight.normal,
              height: 1
            ),)
            ),
              ]
            )
          ),
          const Spacer(),
            Container(
              width: 330,
              height: 404,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Challenges évolutifs', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Brevia',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1
                  ),),
                  const SizedBox(height: 10),
                  Positioned(
                    child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => challengeView()),
                      );
                    },
                    child: Container(
                      width: 330,
                      height: 74,
                      child: Stack(
                        children: [
                          Container(
                            width: 330,
                            height: 74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(245, 245, 245, 1),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vous êtes une Germe',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Brevia',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                'Niveau 1/5 : En cours',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontFamily: 'Elza Text',
                                  fontSize: 10,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.45,
                                ),
                              ),
                              Text(
                                '7/20',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontFamily: 'Elza Text',
                                  fontSize: 10,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.45,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 12,
                            left: 259,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(102, 188, 255, 1),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const SizedBox(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                  _buildLockedLevel(),
                  const SizedBox(height: 10),
                  _buildLockedLevel(),
                  const SizedBox(height: 10),
                  _buildLockedLevel(),
                ]
              )
            ),
            const SizedBox(height: 30),
          ],
        ),
      )
    );
  }
}


Widget _buildLockedLevel() {
  return Container(
    width: 330,
    height: 74,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(245, 245, 245, 1),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Niveau bloqué',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Brevia',
            fontSize: 14,
            fontWeight: FontWeight.normal,
            height: 1.5,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Réalisez tous les challenges du niveau précédent pour y accéder',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(79, 79, 79, 1),
            fontFamily: 'Elza Text',
            fontSize: 10,
            fontWeight: FontWeight.normal,
            height: 1.45,
          ),
        ),
      ],
    ),
  );
}