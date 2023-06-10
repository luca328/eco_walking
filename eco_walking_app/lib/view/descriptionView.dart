import 'package:eco_walking_app/ecowalkingapp.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';
import 'package:provider/provider.dart';

class DescriptionView extends StatefulWidget {
  final String bgImage;
  final String title;
  final String brand;
  final String description;
  final String logo;
  final int points;
  final int coins;
  

  DescriptionView({
    //paramètre requis pour la page
    required this.bgImage,
    required this.logo,
    required this.title,
    required this.brand,
    required this.description,
    required this.points,
    required this.coins,
  });
  @override

  State<DescriptionView> createState() => _DescriptionViewState();

}
class _DescriptionViewState extends State<DescriptionView> {
  late dynamic appState;

  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();
    return Container(
      width: 390,
      height: 688,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          //paramètre du titre de la page description
          Positioned(
            top: 422,
            left: 32,
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Brevia',
                fontSize: 18,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 492,
            left: 30,
            //paramètre du nom de la marque
            child: Text(
              widget.brand,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Brevia',
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
          Positioned(
            top: 530,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  //paramètre du texte de la description
                  widget.description,
                  style: const TextStyle(
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
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
            width: 390,
            height: 317,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(114, 114, 114, 1),
            ),
            //paramètre de l'image de fond
            child: Image.asset(
              widget.bgImage,
              fit: BoxFit.cover,
            ),
          ),
          ),
          Positioned(
            top: 252,
            left: 130,
            child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 1),
                width: 4,
              ),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(130, 130),
              ),
            ),
            //paramètre du logo
            child: Image.asset(
              widget.logo,
              fit: BoxFit.cover,
            ),
          ),
          ),
          Positioned(
            top: 648,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //bouton pour acheter les ecoins
                    ElevatedButton(
                      onPressed: appState.coins >= widget.points ? () {
                        appState.buyCoins(widget.points);
                      } : null,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                        primary: const Color.fromRGBO(32, 168, 84, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //text avec logo ecoins
                          Text(
                            'Échanger pour ${widget.points}',
                            style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Elza Text',
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                          Image.asset(
                             CustomImages.eCoinsWhite,
                             width: 14,
                             height: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}