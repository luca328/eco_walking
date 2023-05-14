import 'package:flutter/material.dart';


class challengeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Challenge'),
      ),
      body: Container(
        width: 390,
        height: 704,
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 130,
          left: 30,
          child: Container(
        width: 330,
        height: 50,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 40,
          left: 0,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),Positioned(
          top: 40,
          left: 0,
          child: Container(
          width: 58,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 1),
      )
        )
        ),const Positioned(
          top: 40,
          left: 148,
          child: Text('7/20', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 0,
          left: 280,
          child: Container(
        width: 50,
        height: 50,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border : Border.all(
            color: const Color.fromRGBO(102, 188, 255, 1),
            width: 1,
          ),
        borderRadius : const BorderRadius.all(Radius.elliptical(50, 50)),
      )
        )
        ),Positioned(
          top: 7,
          left: 17.5,
          child: Stack()
        ),
          ]
        )
      )
        ), const Positioned(
          top: 0,
          left: 0,
          child: Text('Niveau 1/5 : Germe', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 18,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1
        ),)
        ),
          ]
        )
      )
        ),Positioned(
          top: 210,
          left: 27,
          child: Container(
        
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: <Widget>[Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ), const SizedBox(height : 10),
        Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ), const SizedBox(height : 10),
        Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ), const SizedBox(height : 10),
        Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ), const SizedBox(height : 10),
    Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ), const SizedBox(height : 10),
        Container(
        width: 330,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 330,
          height: 74,
          decoration: BoxDecoration(
            borderRadius : const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
        border : Border.all(
            color: const Color.fromRGBO(189, 189, 189, 1),
            width: 1,
          ),
      )
        )
        ),const Positioned(
          top: 10,
          left: 22,
          child: Text('Réaliser un trajet Domicile -> Travail', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Brevia',
          fontSize: 14,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.5 /*PERCENT not supported*/
        ),)
        ),const Positioned(
          top: 32,
          left: 22,
          child: Text('Planifier ou participer à un trajet avec les adress ...', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),Positioned(
          top: 54,
          left: 22,
          child: Container(
          width: 140,
          height: 10,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(63),
              topRight: Radius.circular(63),
              bottomLeft: Radius.circular(63),
              bottomRight: Radius.circular(63),
            ),
        color : Color.fromRGBO(32, 168, 84, 0.5),
      )
        )
        ),const Positioned(
          top: 54,
          left: 170,
          child: Text('État : pas encore débuté', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Elza Text',
          fontSize: 10,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.45
        ),)
        ),
          ]
        )
      ),
    ],
        ),
      )
        ),
          ]
        )
      ),
    );
  }
}
        