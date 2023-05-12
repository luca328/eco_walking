import 'package:eco_walking_app/view/WidgetCard.dart';
import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/view/secondView.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';
import 'package:eco_walking_app/view/button.dart';
import 'package:eco_walking_app/view/descriptionView.dart';
import 'package:eco_walking_app/view/global_provider.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.text,
    required this.pressed,
    required this.color,
  });
  final String text;
  final void Function() pressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      SizedBox(
        width: 261,
        height: 56,
        child: ElevatedButton(
            onPressed: pressed,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)))),
            child:  Text(text, style: Customfont.buttonText(color: Colors.white),),),
      ),
    ]));
  }
}
