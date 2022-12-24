import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomMeter extends StatelessWidget {
  const CustomMeter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Underweight",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
            Text(
              "Normal",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
            Text(
              "Overweight",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: SizedBox(
            height: 1.2.h,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "16.0",
              style: TextStyle(fontSize: 11.sp),
            ),
            Text("18.5", style: TextStyle(fontSize: 11.sp)),
            Text("25.0", style: TextStyle(fontSize: 11.sp)),
            Text("40.0", style: TextStyle(fontSize: 11.sp)),
          ],
        ),
      ],
    );
  }
}
