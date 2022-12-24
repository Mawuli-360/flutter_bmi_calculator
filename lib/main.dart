import 'package:calc/provider/model_provider.dart';
import 'package:calc/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return Sizer(builder: ((context, orientation, deviceType) {
      return ChangeNotifierProvider(
        create: ((context) => Mass()),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      );
    }));
  }
}
