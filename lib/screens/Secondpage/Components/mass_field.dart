import 'package:calc/Config/constants.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:sizer/sizer.dart';

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: heightSize,
            width: widthSize,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: outerBoxShadow),
            child: Center(
                child: Text(
              label,
              style: const TextStyle(color: primaryColor),
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
                style:
                    TextStyle(color: primaryColor, fontSize: defaultFontSize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
