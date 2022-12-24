import 'dart:async';
import 'package:calc/Config/constants.dart';
import 'package:calc/screens/Homepage/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => const HomePage())));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: bgColor),
        width: double.infinity,
        child: const Center(
            child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
        )),
      ),
    );
  }
}
