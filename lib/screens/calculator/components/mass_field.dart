// ignore_for_file: prefer_const_constructors

import 'package:calc/screens/calculator/components/height_field.dart';
import 'package:calc/screens/calculator/components/weight_field.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:sizer/sizer.dart';

class MassField extends StatefulWidget {
  const MassField({
    Key? key,
  }) : super(key: key);

  @override
  State<MassField> createState() => _MassFieldState();
}

class _MassFieldState extends State<MassField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeightField(),
        SizedBox(
          height: 3.h,
        ),
        HeightField()
      ],
    );
  }
}
