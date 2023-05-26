import 'package:eco_walking_app/ecowalkingapp.dart';
import 'package:eco_walking_app/widget/WidgetCard.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/view/secondView.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';
import 'package:eco_walking_app/widget/button.dart';
import 'package:eco_walking_app/widget/bottombar.dart';
import 'package:eco_walking_app/view/descriptionView.dart';
import 'package:provider/provider.dart';


class StartView extends StatefulWidget {
  const StartView({super.key});
  
  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  int pageIndex = 0;
  late dynamic appState;
  
  late List<Widget> _widgets = [];

  @override
  void initState() {
    super.initState();
    _widgets = [
    Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: 5,
            spacing: 10,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescriptionView(
                      coins: appState.coins,
                      bgImage: CustomImages.greenweez,
                      logo: CustomImages.logoGreenWeez,
                      title: "35% offerts sur tous les produits Greenweez",
                      description: "Depuis nos débuts, nous avons cette philosophie qui nous tient à cœur : « Consommer mieux pour rendre le monde meilleur » . Aujourd'hui, nous sommes fiers de voir que les mentalités et les façons de consommer évoluent.",
                      brand: "Greenweez",
                      points: 250,
                      )),
                  );
                },
                child: WidgetCard(
                  brandImage: CustomImages.greenweez,
                  logo: CustomImages.logoGreenWeez,
                  subTitle: "250",
                  title: "35% offerts sur tous les produits Greenweez",
                  width: 160,
                  height: 333,
                  titleSize: 12,
                  subTitleSize: 6.54,
                  logoBorderSize: 79,
                  logoSize: 79,
                  imageHeight: 166.5,
                  imageWidth: 160,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescriptionView(
                      coins: appState.coins,
                      bgImage: CustomImages.makeup,
                      logo: CustomImages.blissim,
                      title: "Une box achetée, une box offerte chez Blissim",
                      description: "Depuis nos débuts, nous avons cette philosophie qui nous tient à cœur : « Consommer mieux pour rendre le monde meilleur » . Aujourd'hui, nous sommes fiers de voir que les mentalités et les façons de consommer évoluent.",
                      brand: "Blissim",
                      points: 450,
                      )),
                  );
                },
                child: WidgetCard(
                  brandImage: CustomImages.makeup,
                  logo: CustomImages.blissim,
                  subTitle: "450",
                  title: "Une box achetée, une box offerte chez Blissim",
                  width: 160,
                  height: 333,
                  titleSize: 12,
                  subTitleSize: 6.54,
                  logoBorderSize: 79,
                  logoSize: 79,
                  imageHeight: 166.5,
                  imageWidth: 160,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescriptionView(
                      coins: appState.coins,
                      bgImage: CustomImages.greenweez,
                      logo: CustomImages.logoGreenWeez,
                      title: "35% offerts sur tous les produits Greenweez",
                      description: "Depuis nos débuts, nous avons cette philosophie qui nous tient à cœur : « Consommer mieux pour rendre le monde meilleur » . Aujourd'hui, nous sommes fiers de voir que les mentalités et les façons de consommer évoluent.",
                      brand: "Greenweez",
                      points: 250,  
                      )),
                  );
                },
                child: WidgetCard(
                  brandImage: CustomImages.greenweez,
                  logo: CustomImages.logoGreenWeez,
                  subTitle: "Pas besoin de garants",
                  title: "Garantie appart",
                  width: 160,
                  height: 333,
                  titleSize: 12,
                  subTitleSize: 6.54,
                  logoBorderSize: 79,
                  logoSize: 79,
                  imageHeight: 166.5,
                  imageWidth: 160,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescriptionView(
                      coins: appState.coins,
                      bgImage: CustomImages.makeup,
                      logo: CustomImages.blissim,
                      title: "Une box achetée, une box offerte chez Blissim",
                      description: "Depuis nos débuts, nous avons cette philosophie qui nous tient à cœur : « Consommer mieux pour rendre le monde meilleur » . Aujourd'hui, nous sommes fiers de voir que les mentalités et les façons de consommer évoluent.",
                      brand: "Blissim",
                      points: 450,
                      )),
                  );
                },
                child: WidgetCard(
                  brandImage: CustomImages.makeup,
                  logo: CustomImages.blissim,
                  subTitle: "450",
                  title: "Une box achetée, une box offerte chez Blissim",
                  width: 160,
                  height: 333,
                  titleSize: 12,
                  subTitleSize: 6.54,
                  logoBorderSize: 79,
                  logoSize: 79,
                  imageHeight: 166.5,
                  imageWidth: 160,
                ),
              ),
            ],
          ),
        ])),
    ];
  }
  @override
  Widget build(BuildContext context) {
  appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text(
          style: Customfont.title(color: Colors.black),
         "${CustomImages.eCoins} ${appState.coins}",
        ),
        title: Center(
          child: Text(
            'ECO WALKING',
            style: Customfont.title(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: _widgets,
            ),
          ),
        ));
  }
}
