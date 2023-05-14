import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/view/StartView.dart';
import 'package:eco_walking_app/view/secondView.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(tabs: <Widget>[
            Tab(
              icon: ImageIcon(
                AssetImage(CustomImages.eCoins,),
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: ImageIcon(
                AssetImage(CustomImages.eCoins,),
                color: Colors.grey,
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
          const StartView(),
          SecondView(),
        ]),
      ),
    );
  }
}