

import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidght;
  static double? screenHeight;
  static double defaultSize = 10;
  static Orientation? orientation;

  void init (BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidght = _mediaQueryData!.size.width;
    orientation = _mediaQueryData!.orientation;

    defaultSize = orientation == Orientation.landscape
       ? screenHeight! * 0.024 : screenWidght! * 0.024;
  }
}