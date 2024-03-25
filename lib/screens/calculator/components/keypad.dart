import 'package:calc/constants/global_methods.dart';
import 'package:calc/constants/slide_animation.dart';
import 'package:calc/provider/bmi_provider.dart';
import 'package:calc/screens/calculator/components/operator_buttons.dart';
import 'package:calc/screens/calculator/components/custom_button.dart';
import 'package:calc/screens/result/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Keypad extends StatelessWidget {
  const Keypad({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Mass>(context, listen: false);

    void clearAll() {
      provider.reset();
    }

    void deleteNumber() {
      provider.deleteButton();
    }

    void nextToResultScreen() {
      if (provider.weight == "" || provider.height == "") {
        GlobalMethods.customSnackbar(
            context: context, label: "Please Fill Both Fields !!!");
      } else {
        provider.bmiResult(provider.weight, provider.height);
        Navigator.of(context).push(CustomTransition(const ResultScreen()));
      }
    }

    return SizedBox(
      width: double.infinity,
      height: 35.h,
      child: Row(
        children: [
          SizedBox(
            width: 75.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButton(buttons: [
                  for (final i in ["7", "8", "9"]) CustomButton(label: i)
                ]),
                buildButton(buttons: [
                  for (final i in ["4", "5", "6"]) CustomButton(label: i)
                ]),
                buildButton(buttons: [
                  for (final i in ["3", "2", "1"]) CustomButton(label: i)
                ]),
                buildButton(buttons: [
                  const CustomButton(label: "0"),
                ]),
                SizedBox(height: 5.h)
              ],
            ),
          ),
          SizedBox(
            width: 25.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OperatorButton(onTap: clearAll, label: "AC"),
                OperatorButton(onTap: deleteNumber, isIconData: true),
                OperatorButton(onTap: nextToResultScreen, label: "GO"),
                SizedBox(height: 5.h)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildButton({required List<CustomButton> buttons}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: buttons,
    );
  }
}
