import 'package:calc/constants/app_size.dart';
import 'package:calc/constants/colors.dart';
import 'package:calc/provider/bmi_provider.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class WeightField extends StatelessWidget {
  const WeightField({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Mass>(context);
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
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
                height: AppSize.heightSize,
                width: AppSize.widthSize,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: value.isWeightSelected
                      ? themeProvider.isDark
                          ? AppColors.darkInnerBoxShadow
                          : AppColors.innerBoxShadow
                      : themeProvider.isDark
                          ? AppColors.darkOuterBoxShadow
                          : AppColors.outerBoxShadow,
                ),
                child: Center(
                    child: Text(
                  "WEIGHT",
                  style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: AppSize.defaultFontSize),
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
                          ? AppColors.secondaryColor
                          : theme.primaryColor),
                ),
              ),
              Text(
                "Kilogram",
                style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: AppSize.defaultFontSize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
