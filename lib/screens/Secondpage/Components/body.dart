import 'package:calc/Config/colors.dart';
import 'package:calc/screens/Secondpage/Components/card_result.dart';
import 'package:calc/provider/model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../provider/theme_provider.dart';
import 'mass_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeModal>(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 1.h,
          ),
          Text(
            "BMI",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: theme.primaryColor),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  MassField(
                    label: "WEIGHT",
                    number: Provider.of<Mass>(context, listen: false).weight,
                    unit: "Kilogram",
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MassField(
                    label: "HEIGHT",
                    number: Provider.of<Mass>(context, listen: false).height,
                    unit: "Centimeter",
                  ),
                  const Spacer(),
                  Divider(
                    thickness: 2,
                    color:
                        themeProvider.isDark ? Colors.blueGrey.shade900 : null,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  const CardResult(),
                  SizedBox(
                    height: 3.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Provider.of<Mass>(context, listen: false).resetResult();
                    },
                    child: Container(
                      height: 10.h,
                      width: 10.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        boxShadow: themeProvider.isDark
                            ? darkOuterBoxShadow
                            : outerBoxShadow,
                        color: theme.backgroundColor,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 5.h,
                        color: secondaryColor,
                      )),
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
