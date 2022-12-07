import 'package:flutter/cupertino.dart';

class SizeInfo {

  static double? screenWidth;
  static double? screenHeight;

  static void init(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}
