import 'package:calc/constants/app_size.dart';
import 'package:calc/constants/colors.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: AppSize.heightSize,
            width: AppSize.widthSize,
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: themeProvider.isDark
                    ? AppColors.darkOuterBoxShadow
                    : AppColors.outerBoxShadow),
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
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.bold)),
              Text(
                unit,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: AppSize.defaultFontSize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
