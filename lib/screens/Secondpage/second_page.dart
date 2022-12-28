import 'package:calc/Config/colors.dart';
import 'package:calc/screens/Secondpage/Components/body.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Body(),
    );
  }
}
