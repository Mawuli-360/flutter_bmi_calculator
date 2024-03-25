import 'package:calc/config/colors.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: operatorHeight,
        width: operatorWidth,
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
          boxShadow: themeProvider.isDark ? darkOuterBoxShadow : outerBoxShadow,
          borderRadius: const BorderRadius.all(
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
