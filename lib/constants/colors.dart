import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class AppColors {
  AppColors._();

  static const Color bgColor = Color(0xffe2e3eb);
  static const Color darkBgColor = Color(0xff1b1d37);
  static const Color primaryColor = Color(0xC3444444);
  static const Color secondaryColor = Color(0xFFD67C28);


  // shadow colors
  static const List<BoxShadow> outerBoxShadow = [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(4, 4),
      blurRadius: 12,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-4, -4),
      blurRadius: 12,
    ),
  ];
  static List<BoxShadow> darkOuterBoxShadow = [
    const BoxShadow(
      color: Colors.black54,
      offset: Offset(3, 3),
      blurRadius: 8,
    ),
    BoxShadow(
      color: Colors.blueGrey.shade800,
      offset: const Offset(-4, -4),
      blurRadius: 6,
    ),
  ];
  static const List<BoxShadow> innerBoxShadow = [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(4, 4),
      blurRadius: 12,
      inset: true,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-4, -4),
      blurRadius: 12,
      inset: true,
    ),
  ];
  static List<BoxShadow> darkInnerBoxShadow = [
    const BoxShadow(
      color: Colors.black54,
      offset: Offset(4, 4),
      blurRadius: 6,
      inset: true,
    ),
    BoxShadow(
      color: Colors.blueGrey.shade700,
      offset: const Offset(-4, -4),
      blurRadius: 4,
      inset: true,
    ),
  ];
}


// double operatorFontSize =

//LIST OF BOX SHADOWS

