import 'package:calc/provider/theme_provider.dart';
import 'package:calc/screens/result/components/custom_meter.dart';
import 'package:calc/constants/colors.dart';
import 'package:calc/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CardResult extends StatelessWidget {
  const CardResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(3.h),
      child: Container(
        height: 30.h,
        decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: themeProvider.isDark
                ? AppColors.darkOuterBoxShadow
                : AppColors.outerBoxShadow),
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<Mass>(
                    builder: (context, value, child) => Text(
                      value.result,
                      style: TextStyle(
                        fontSize: 48.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BMI",
                        style: TextStyle(
                          fontSize: 29.sp,
                          fontWeight: FontWeight.w700,
                          color: theme.primaryColor,
                        ),
                      ),
                      Consumer<Mass>(
                        builder: (context, value, child) => Text(
                          value.msg,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: value.color,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              const CustomMeter(),
            ],
          ),
        ),
      ),
    );
  }
}
