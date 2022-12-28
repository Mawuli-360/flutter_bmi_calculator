import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:sizer/sizer.dart';

const Color bgColor = Color(0xffe2e3eb);
const Color primaryColor = Color(0xC3444444);
const Color secondaryColor = Color(0xFFD67C28);

double heightSize = 7.h;
double widthSize = 34.w;
double operatorHeight = 14.h;
double operatorWidth = 19.w;
double defaultFontSize = 11.sp;
// double operatorFontSize =

//LIST OF BOX SHADOWS
const List<BoxShadow> outerBoxShadow = [
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
const List<BoxShadow> innerBoxShadow = [
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

//CUSTOM BUTTON
Container customButton({required String label}) {
  return Container(
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: bgColor,
      boxShadow: outerBoxShadow,
    ),
    child: Center(
        child: Text(
      label,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    )),
  );
}
