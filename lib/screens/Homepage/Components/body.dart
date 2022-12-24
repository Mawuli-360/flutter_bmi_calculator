import 'package:calc/Config/constants.dart';
import 'package:calc/screens/Homepage/Components/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:calc/screens/Homepage/Components/mass_field.dart';
import 'package:sizer/sizer.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 1.h,
          ),
          Text(
            "BMI",
            style: TextStyle(fontSize: 28.sp, color: primaryColor),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  const MassField(),
                  SizedBox(height: 4.h),
                  const Divider(thickness: 2),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          const Expanded(flex: 2, child: Keyboard()),
        ]),
      ),
    );
  }
}
