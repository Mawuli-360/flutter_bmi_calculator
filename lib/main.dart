import 'package:calc/provider/model_provider.dart';
import 'package:calc/provider/theme_provider.dart';
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
    ThemeProvider themeProvider = ThemeProvider();
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: ((context) => Mass())),
              ChangeNotifierProvider(create: ((context) => ThemeProvider())),
            ],
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ));
      }),
    );
  }
}
