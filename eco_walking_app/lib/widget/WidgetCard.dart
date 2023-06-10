import 'package:eco_walking_app/assets/images/images.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';

class WidgetCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String brandImage;
  final String logo;
  final double height;
  final double width;
  final double titleSize;
  final double subTitleSize;
  final double imageHeight;
  final double imageWidth;
  final double logoSize;
  final double logoBorderSize;

  const WidgetCard({
    super.key,
    //paramètre requis pour le widget
    required this.brandImage,
    required this.logo,
    required this.subTitle,
    required this.title,
    required this.width,
    required this.height,
    required this.titleSize,
    required this.subTitleSize,
    required this.imageHeight,
    required this.imageWidth,
    required this.logoSize,
    required this.logoBorderSize,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(188, 135, 135, 135)),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                //paramètre de l'image de fond
                Image.asset(
                  brandImage,
                  width: imageWidth,
                  height: imageHeight,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Spacer(),
                //paraètre du titre
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                //paramètre du sous titre avec le logo ecoins
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: subTitleSize,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.lightGreen,
                      ),
                    ),
                    Image.asset(
                      CustomImages.eCoinsGreen,
                      width: 14,
                      height: 14,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          //paramètre du logo
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child : Container(
                width: logoBorderSize,
                height: logoBorderSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center( 
                  child: Image.asset(
                    logo,
                    width: logoSize,
                    height: logoSize,
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
