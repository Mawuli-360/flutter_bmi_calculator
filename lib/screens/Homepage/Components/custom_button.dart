import 'package:calc/Config/colors.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../provider/model_provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Mass>(context, listen: false);
    return GestureDetector(
      onTap: () {
        if (provider.weight.length < 3) {
          provider.kilo(label);
        }

        if (provider.height.length < 3) {
          provider.inches(label);
        } else {
          return;
        }
      },
      child: Container(
        height: 10.h,
        width: 20.w,
        decoration: const BoxDecoration(
          color: bgColor,
          boxShadow: outerBoxShadow,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Text(label,
                style: TextStyle(
                    fontSize: 24.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
