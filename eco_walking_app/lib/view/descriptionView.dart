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
            child: Text(
              widget.description,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Color.fromRGBO(79, 79, 79, 1),
                fontFamily: 'Elza Text',
                fontSize: 10,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.45,
              ),
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
                  color: Color.fromRGBO(255, 255, 255, 1),
                  width: 4,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.elliptical(130, 130),
                ),
              ),
              child: Image.asset(
                widget.logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 648,
            left: 29.5,
            child: Container(
              width: 330,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: Color.fromRGBO(32, 168, 84, 1),
              ),
            ),
          ),
          Positioned(
            top: 648,
            left: 29.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Coins: ${appState.coins}'),
                ElevatedButton(
                  onPressed: appState.coins >= widget.points ? () {
                    appState.buyCoins(widget.points);
                  } : null,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                    primary: Color.fromRGBO(32, 168, 84, 1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Échanger pour ${widget.points}',
                        textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}