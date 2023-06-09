import 'package:eco_walking_app/view/mainView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/view/StartView.dart';
import 'package:eco_walking_app/view/secondView.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "ScarletHeart",
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const Directionality(textDirection: TextDirection.ltr, child: MainView(),)
      ),
    );
  }
}
//fonction globale pour l'app
class MyAppState extends ChangeNotifier {
  int coins = 3000;
  int steps = 0; 
  void addCoins(int coins) {
    this.coins += coins;
    notifyListeners();
  }

  void buyCoins(int coins) {
    this.coins -= coins;
    notifyListeners();
  }

  void resetStep() {
    steps = 0;
    notifyListeners();
  }
  void updateSteps(int newSteps) {
    steps = newSteps;
    notifyListeners();
  }
}