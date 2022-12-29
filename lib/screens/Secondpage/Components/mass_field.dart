import 'package:calc/Config/colors.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../provider/theme_provider.dart';

class MassField extends StatelessWidget {
  final String label;
  final String number;
  final String unit;

  const MassField({
    Key? key,
    required this.label,
    required this.number,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeModal>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: heightSize,
            width: widthSize,
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow:
                    themeProvider.isDark ? darkOuterBoxShadow : outerBoxShadow),
            child: Center(
                child: Text(
              label,
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
          ),
          Column(
            children: [
              Text(number,
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: secondaryColor,
                      fontWeight: FontWeight.bold)),
              Text(
                unit,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: defaultFontSize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
