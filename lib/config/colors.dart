import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:sizer/sizer.dart';

const Color bgColor = Color(0xffe2e3eb);
const Color darkBgColor = Color(0xff1b1d37);
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
List<BoxShadow> darkOuterBoxShadow = [
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
List<BoxShadow> darkInnerBoxShadow = [
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
