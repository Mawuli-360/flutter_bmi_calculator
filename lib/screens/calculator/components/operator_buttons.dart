import 'package:calc/constants/app_size.dart';
import 'package:calc/constants/colors.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class OperatorButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final bool isIconData;
  const OperatorButton(
      {super.key,
      required this.onTap,
      this.label = "",
      this.isIconData = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSize.operatorHeight,
        width: AppSize.operatorWidth,
        decoration: BoxDecoration(
          color: theme.cardColor,
          boxShadow: themeProvider.isDark
              ? AppColors.darkOuterBoxShadow
              : AppColors.outerBoxShadow,
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: isIconData
            ? Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 5.h,
                  color: AppColors.secondaryColor,
                ),
              )
            : Center(
                child: Text(label,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor)),
              ),
      ),
    );
  }
}
