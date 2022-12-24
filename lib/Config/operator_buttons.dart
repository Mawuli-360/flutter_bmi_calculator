import 'package:calc/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OperatorButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final String label;
  final bool isIconData;
  const OperatorButton(
      {super.key,
      required this.voidCallback,
      this.label = "",
      this.isIconData = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: operatorHeight,
        width: operatorWidth,
        decoration: const BoxDecoration(
          color: bgColor,
          boxShadow: outerBoxShadow,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: isIconData
            ? Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: secondaryColor,
                ),
              )
            : Center(
                child: Text(label,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor)),
              ),
      ),
    );
  }
}
