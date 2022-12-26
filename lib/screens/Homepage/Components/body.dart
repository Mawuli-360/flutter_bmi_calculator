import 'package:calc/Config/constants.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:calc/screens/Homepage/Components/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:calc/screens/Homepage/Components/mass_field.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          SizedBox(height: 2.h),
          Text(
            "BMI",
            style: TextStyle(fontSize: 28.sp, color: primaryColor),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  const MassField(),
                  // SizedBox(height: 6.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Switch(
                      value: provider.darkTheme,
                      onChanged: ((value) {
                        provider.setDarkTheme(value);
                      }),
                    ),
                  ),
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
