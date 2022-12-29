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
    final themeProvider = Provider.of<ThemeModal>(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          SizedBox(height: 2.h),
          Text(
            "BMI",
            style: TextStyle(
                fontSize: 28.sp, color: Theme.of(context).primaryColor),
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
                    child: Consumer<ThemeModal>(
                        builder: (context, ThemeModal themeModal, _) {
                      return Switch(
                        value: themeModal.isDark ? true : false,
                        onChanged: ((bool value) {
                          themeModal.isDark
                              ? themeModal.isDark = false
                              : themeModal.isDark = true;
                        }),
                      );
                    }),
                  ),
                  Divider(
                    thickness: 2,
                    color:
                        themeProvider.isDark ? Colors.blueGrey.shade900 : null,
                  ),
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
