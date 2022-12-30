import 'package:calc/screens/Homepage/Components/operator_buttons.dart';
import 'package:calc/screens/Homepage/Components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../Config/global_methods.dart';
import '../../../Config/slide_animation.dart';
import '../../../provider/bmi_provider.dart';
import '../../Secondpage/second_page.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Mass>(context, listen: false);

    void clearAllFxn() {
      provider.reset();
    }

    void deleteFxn() {
      provider.deleteButton();
    }

    void goFxn() {
      if (provider.weight == "" || provider.height == "") {
        GlobalMethods.customSnackbar(
            context: context, label: "Please Fill Both Fields !!!");
      } else {
        provider.bmiResult(provider.weight, provider.height);
        Navigator.of(context).push(CustomTransition(const SecondPage()));
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
                OperatorButton(voidCallback: clearAllFxn, label: "AC"),
                OperatorButton(voidCallback: deleteFxn, isIconData: true),
                OperatorButton(voidCallback: goFxn, label: "GO"),
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
