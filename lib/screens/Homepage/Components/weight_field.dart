import 'package:calc/Config/constants.dart';
import 'package:calc/provider/model_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class WeightField extends StatefulWidget {
  const WeightField({super.key});

  @override
  State<WeightField> createState() => _WeightFieldState();
}

class _WeightFieldState extends State<WeightField> {
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
              provider.onWeightPressed();
            },
            child: Consumer<Mass>(
              builder: (context, value, child) => AnimatedContainer(
                duration: const Duration(milliseconds: 8),
                height: heightSize,
                width: widthSize,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: value.isWeightSelected
                        ? innerBoxShadow
                        : outerBoxShadow),
                child: Center(
                    child: Text(
                  "WEIGHT",
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
                  value.weight,
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: provider.isWeightSelected
                          ? secondaryColor
                          : primaryColor),
                ),
              ),
              Text(
                "Kilogram",
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
