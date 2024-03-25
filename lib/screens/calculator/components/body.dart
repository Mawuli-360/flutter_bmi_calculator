import 'package:calc/provider/theme_provider.dart';
import 'package:calc/screens/calculator/components/keypad.dart';
import 'package:flutter/material.dart';
import 'package:calc/screens/calculator/components/mass_field.dart';
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
    final theme = Theme.of(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          SizedBox(height: 2.h),
          Text(
            "BMI",
            style: TextStyle(fontSize: 28.sp, color: theme.primaryColor),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  const MassField(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<ThemeProvider>(
                        builder: (context, ThemeProvider themeModal, _) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.0.h),
                        child: SizedBox(
                          height: 2.h,
                          child: Switch(
                            activeThumbImage:
                                const AssetImage("asset/moon.png"),
                            inactiveThumbImage:
                                const AssetImage("asset/sun.png"),
                            inactiveTrackColor: Colors.white,
                            value: themeModal.isDark ? true : false,
                            onChanged: ((bool value) {
                              themeModal.isDark
                                  ? themeModal.isDark = false
                                  : themeModal.isDark = true;
                            }),
                          ),
                        ),
                      );
                    }),
                  ),
                  Divider(thickness: 2, color: theme.dividerColor),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          const Expanded(flex: 2, child: Keypad()),
        ]),
      ),
    );
  }
}
