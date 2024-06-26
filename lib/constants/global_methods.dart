import 'package:calc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GlobalMethods {
  GlobalMethods._();

  static void customSnackbar(
      {required BuildContext context, required String label}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
                  colors: [AppColors.secondaryColor, AppColors.primaryColor]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(
            label,
            style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.bgColor,
                fontWeight: FontWeight.bold),
          )),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
