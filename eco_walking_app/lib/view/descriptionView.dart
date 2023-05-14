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
    return Scaffold(
      appBar: AppBar(title: const Text('Ma page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Coins: ${appState.coins}'),
            ElevatedButton(
              onPressed: appState.coins >= widget.points
                ? () {
                    appState.buyCoins(widget.points);
                  }
                : null,
              child: Text('Échanger pour ${widget.points}'),
            ),
          ],
        ),
      ),
    );
  }
}
