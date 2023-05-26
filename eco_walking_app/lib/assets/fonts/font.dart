import 'package:flutter/material.dart';

class Customfont {
  static TextStyle title({Color color = Colors.black, String family = "Brevia"})
    { 
      return TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: family,
        fontSize: 20,
        decoration: TextDecoration.none);
    }
  static TextStyle appBarCoins({Color color = Colors.black, String family = "ElzaText"})
    { 
      return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: family,
        fontSize: 14,
        decoration: TextDecoration.none);
    }
  static TextStyle mediumTitle({Color color = Colors.black, String family = "Brevia"})
  { 
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: family,
      fontSize: 11,
      decoration: TextDecoration.none);
  }
  static TextStyle buttonText({Color color = Colors.black, String family = "Brevia"})
  { 
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: family,
      fontSize: 14,
      decoration: TextDecoration.none);
  }
}