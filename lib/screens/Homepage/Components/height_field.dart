import 'package:calc/Config/constants.dart';
import 'package:calc/provider/model_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HeightField extends StatefulWidget {
  const HeightField({super.key});

  @override
  State<HeightField> createState() => _HeightFieldState();
}

class _HeightFieldState extends State<HeightField> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Mass>(context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              provider.onHeightPressed();
            },
            child: Consumer<Mass>(
              builder: (context, value, child) => AnimatedContainer(
                duration: const Duration(milliseconds: 8),
                height: heightSize,
                width: widthSize,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: value.isHeightSelected
                        ? innerBoxShadow
                        : outerBoxShadow),
                child: Center(
                    child: Text(
                  "HEIGHT",
                  style:
                      TextStyle(color: primaryColor, fontSize: defaultFontSize),
                )),
              ),
            ),
          ),
          Column(
            children: [
              Consumer<Mass>(
                builder: (context, value, child) => Text(
                  value.height,
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: provider.isHeightSelected
                          ? secondaryColor
                          : primaryColor),
                ),
              ),
              Text(
                "Centimeter",
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
