import 'package:calc/Config/theme_style.dart';
import 'package:calc/provider/theme_provider.dart';
import 'package:calc/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'provider/bmi_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) => Mass())),
          ChangeNotifierProvider(create: ((context) => ThemeModal()))
        ],
        child: Consumer<ThemeModal>(builder: (context, value, _) {
          return Sizer(
            builder: ((context, orientation, deviceType) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Styles.themesData(value.isDark, context),
                home: const SplashScreen(),
              );
            }),
          );
        }));
  }
}
